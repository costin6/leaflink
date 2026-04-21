import AVFoundation
import UIKit
import SwiftUI

class CameraViewController: UIViewController {

    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!

    let captureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .green
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        captureSession = AVCaptureSession()
        captureSession.sessionPreset = .medium

        guard let backCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back),
              let input = try? AVCaptureDeviceInput(device: backCamera) else {
            print("Unable to access the back camera!")
            return
        }

        if captureSession.canAddInput(input) {
            captureSession.addInput(input)
        }

        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)

        view.addSubview(captureButton)
        NSLayoutConstraint.activate([
            captureButton.widthAnchor.constraint(equalToConstant: 60),
            captureButton.heightAnchor.constraint(equalToConstant: 60),
            captureButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            captureButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])

        // Add a target to the button to handle the click event
        captureButton.addTarget(self, action: #selector(captureButtonTapped), for: .touchUpInside)

        captureSession.startRunning()
    }

    @objc func captureButtonTapped() {
        // Show a loading indicator
        let loadingIndicator = UIActivityIndicatorView(style: .large)
        loadingIndicator.color = .white
        loadingIndicator.center = view.center
        view.addSubview(loadingIndicator)
        loadingIndicator.startAnimating()

        // Delay the navigation by 5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            loadingIndicator.stopAnimating()
            
           
            let MyPlantGuideView = MyPlantGuideView()
           let hostingController = UIHostingController(rootView: MyPlantGuideView)
           self.navigationController?.pushViewController(hostingController, animated: true)
        }
    }
}

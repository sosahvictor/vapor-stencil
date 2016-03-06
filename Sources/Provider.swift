import Vapor

public class Provider: Vapor.Provider {
	public static let renderer = StencilRenderer()

	public static func boot(application: Application) {
		View.renderers[".stencil"] = self.renderer
	}

}

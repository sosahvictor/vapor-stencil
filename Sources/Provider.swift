import Vapor

public class Provider: Vapor.Provider {

	public static func boot(application: Application) {
		View.renderers[".stencil"] = StencilRenderer()
	}

}

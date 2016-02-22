import Vapor

public class Provider: Vapor.Provider {

	public override class func boot(application: Application) {
		View.renderers[".stencil"] = StencilRenderer()
	}

}

import Vapor

public class StencilServiceProvider: ServiceProvider {

	public override func register() {
		View.renderers[".stencil"] = StencilRenderer()
	}

}

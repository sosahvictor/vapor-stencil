import Stencil
import PathKit
import Vapor

public class StencilRenderer: RenderDriver {
	public let namespace: Namespace
	public let templateLoader: TemplateLoader

	public init(namespace: Namespace = Namespace(), templateLoader: TemplateLoader? = nil) {
		self.namespace = namespace
		self.templateLoader = templateLoader ?? TemplateLoader(paths: [Path(View.resourceDir)])
	}

	public func render(template template: String, context: [String: Any]) throws -> String {
		let c = Context(dictionary: context)
		c["loader"] = self.templateLoader

		let template = Template(templateString: template)
		return try template.render(c, namespace: self.namespace)
	}

}

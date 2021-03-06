"use strict"

m = require "mithril"
infect = require "infect"

class Klass
	constructor: (vm, Nav, Swoosh, Trans) -> return ->
		m "div", do ->
			return []
			.concat m.component Nav
			.concat m.component Swoosh
			.concat m "#transition", { key: m.route(), config: Trans.intro() },
				m "article.card.row.two-third", do ->
					return []
					.concat m "header",
						m "h2", "About"
					.concat m "div.content", """
						Hello. Welcome to this great module. It is a very
						great module because it tells you all about the great demo. The
						great demo was created by Brandon. Thank you for reading this text.
					"""
					.concat m "footer",
						m "button.row", "Great!"

AboutView = infect.func Klass

AboutView.$infect = [ "NavigationModule", "SwooshModule", "TransitionFactory" ]

module.exports = AboutView

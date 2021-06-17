//
//  RegisterTopics.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import Foundation

var eData = [
    
    //MARK: Filmes:
    
    EntertainmentApp(sectionType: "Filmes", name: ["Como ser Warren Buffett",
                                                   "Capitalismo: Uma história de amor",
                                                   "O Lobo de Wall Street",
                                                   "Enron: Os mais espertos da sala",
                                                   "Fome de Poder",
                                                   "A grande Aposta",
                                                   " À caça de Madoff (Chasing Madoff)",
                                                   "O mago das mentiras","Margin Call: O dia antes do fim"],
                     imageGallery: ["becoming_buffet-500x739",
                                    "capitalism",
                                    "olobodewallstreet",
                                    "enron","fome_poder-500x667",
                                    "grande_aposta-500x780",
                                    "madoff",
                                    "mago_mentiras-500x742",
                                    "margin_call-500x721"],
                     
                     description: ["Como ser Warren Buffett",
                                   "Capitalismo: Uma história de amor",
                                   "O Lobo de Wall Street",
                                   "Enron: Os mais espertos da sala",
                                   "Fome de Poder",
                                   "A grande Aposta",
                                   " À caça de Madoff (Chasing Madoff)",
                                   "O mago das mentiras","Margin Call: O dia antes do fim"],
                     
                     linkNetflix: ["https://www.youtube.com",
                                   "https://www.google.com",
                                   ""],
                     linkAmazon: ["https://amazon.com",
                                  "",
                                  ""],
                     LinkApple: ["https://apple.com",
                                 "",
                                 ""]),
    
    //MARK: Livros:
    
    EntertainmentApp(sectionType: "Livros",
                    name: ["Pai Rico, Pai Pobre",
                           "O Segredo da mente Milionária",
                           "Do Mil ao Milhão",
                           "O Homem mais Rico da Babilonia",
                           "O Investidor Inteligente",
                           "Me Poupe, O Livro",
                           "Educação Financeira",
                           "A Psicologia Financeira",
                           "Como cuidar do seu dinheiro",
                           "Investimentos Inteligentes",
                           "Destrave seu dinheiro",
                           "Quem Convence, enriquece!",
                           "Lucrando com os Tubarões",
                           "Super Sinais",
                           "Negociando ações com Foco a longo prazo",
                           "Analise técnica do mercado financeiro.",
                           "A Bola de Neve.",
                           "Faça fortuna Com Ações.",
                           "A Cabeça do investidor.",
                           "O outro lado da Bolsa."],
                    imageGallery: ["pairicopaipobre",
                                   "ossegredosdamente",
                                   "domilaomilao",
                                   "ohomemmaisricodababilonia",
                                   "oinvestidorinteligente",
                                   "mepoupe","educacaofinanceira",
                                   "apsicologiafinanceira",
                                   "comocuidardoseudinheiro",
                                   "investimentosinteligentes",
                                   "destraveseudinheiro",
                                   "quemconvenceenriquece",
                                   "lucrandocomostubaroes",
                                   "supersinais",
                                   "negociandoacoescomfoco",
                                   "analisetecnicadomercadofin",
                                   "aboladeneve",
                                   "facafortunacomacoes",
                                   "acabecadoinvestidor",
                                   "ooutroladodabolsa"],
                    description: [StringConstants.descriptionPairico,
                                  StringConstants.descriptionOsSegredosMente,
                                  StringConstants.descriptionDoMilaoMilhao,
                                  StringConstants.descriptionOHomemMaisRicoBabil,
                                  StringConstants.descriptionOInvestidorIntelig,
                                  StringConstants.descriptionMePoupe,
                                  StringConstants.descriptionEducacaoFinanceira,
                                  StringConstants.descriptionApsicologiaFin,
                                  StringConstants.descriptionComoCuidarDoSeuDin,
                                  StringConstants.descriptionInvestimentosIntelig,
                                  StringConstants.descriptiondestraveseudinheiro,
                                  StringConstants.descriptionquemconvenceenriquece,
                                  StringConstants.descriptionlucrandocomostubaroes,
                                  StringConstants.descriptionsupersinais,
                                  StringConstants.descriptionnegociandoacoescomfoco,
                                  StringConstants.descriptionanalisetecnicadomercadofin,
                                  StringConstants.descriptionaboladeneve,
                                  StringConstants.descriptionfacafortunacomacoes,
                                  StringConstants.descriptionacabecadoinvestidor,
                                  StringConstants.descriptionooutroladodabolsa],
                    linkNetflix: ["","","","","","","","","","","","","","","","","","","","","","","",""],
                    linkAmazon: ["","","","","","","","","","","","","","","","","","",""],
                    LinkApple: ["","","","","","","","","","","","","","","","","","",""]),
    
    //MARK: Séries:
    
    EntertainmentApp(sectionType: "Séries/Programas de Tv", name: ["Billions","Black Monday","Industry","Million Dollar","O sócio","Shark Tank Brasil","American Greed"],
                     imageGallery:  ["billions","blackmonday","industry","milliondollartraders","oSocio","sharkTank","americangreed"],
                     description: ["Billions","Black Monday","Industry","Million Dollar","O sócio","Shark Tank Brasil","American Greed"],
                     linkNetflix: ["","","","","","","","","","","","","","","","","","","",],
                     linkAmazon: ["","","","","","","","","","","","","","","","","","","",],
                     LinkApple: ["","","","","","","","","","","","","","","","","","","",])
 

            ]

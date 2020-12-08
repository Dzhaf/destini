    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Dzhafar on 28.10.2020.
    //
    
    
    import Foundation
    
    struct StoryBrain {
        
        var storyNumber = 0
        
        let stories = [
            Story(
                title: "Ваша машина проколола шину на извилистой дороге посреди пустыни, где нет мобильной связи. Вы решаете продолжить путь автостопом. Рядом с вами останавливается ржавый пикап. Мужчина в широкополой шляпе с бездушными глазами открывает вам пассажирскую дверь и спрашивает: Подбросить?",
                choice1: "Я сажусь. Спасибо за помощь!", choice1Destination: 2,
                choice2: "Лучше сначала спросите его, не убийца ли он ?", choice2Destination: 1
            ),
            Story(
                title: "Он медленно кивает, не обращая внимания на вопрос.",
                choice1: "По крайней мере, он честен. Я сажусь внутрь.", choice1Destination: 2,
                choice2: "Подождите. Я знаю, как поменять шину.", choice2Destination: 3
            ),
            Story(
                title: "Когда вы тронулись, незнакомец начинает говорить о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с Элтоном Джоном. Он тянется к бардачку.",
                choice1: "Я люблю Элтона Джона! Передай ему кассету.", choice1Destination: 5,
                choice2: "Либо он либо я! Вы возьмете нож и ударите его.", choice2Destination: 4
            ),
            Story(
                title: "Что? Ну и отговорка! Надеюсь, что и вправду знаете.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Когда вы сносите ограждение и устремляетесь к обрыву, вы размышляете о сомнительной идее нанести удар ножом тому, кто ведет машину, в которой вы находитесь...",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Вы едете с убийцей, напевая в унисон песни Элтона Джона. Он высаживает вас в следующем городе. Перед тем, как уйти, он спрашивает, знаете ли вы, где можно сбрасывать трупы. Вы отвечаете: «Попробуйте пирс».",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
        
    }
    
    

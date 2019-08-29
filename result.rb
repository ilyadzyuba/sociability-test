class Result
  def initialize(score)
    @score = score
    @result = [
      # результат_0 - 0..3
      "Ваша общительность чрезмерна. Вы говорливы, многословны, вспыльчивы, обидчивы, часто необъективны. Вы вмешиваетесь в дела, которые не имеют к вам никакого отношения. Беретесь судить о проблемах, в которых совершенно не разбираетесь. Часто из за вас возникают конфликты. С серьезной работой вы справиться не в состоянии. Людям очень трудно с вами. Вам необходимо воспитывать в себе терпение, сдержанность и уважительное отношение к людям.",
      # результат_1 - 4..8
      "Вы, кажется, знакомы со всеми и все всегда обо всех знаете. Вы любите принимать участие в различных обсуждениях, хотя серьезные темы кажутся вам ужасно скучными. Привыкли высказываться даже в том случае, если недостаточно компетентны в обсуждаемом вопросе. Беретесь за любое дело, хотя не всегда можете успешно довести его до конца. Неудивительно, что руководители и коллеги относятся к вам с недоверием и никто не хочет выполнять с вами совместные задания.",
      # результат_2 - 9..13
      "Вы, кажется, знакомы со всеми и все всегда обо всех знаете. Вы любите принимать участие в различных обсуждениях, хотя серьезные темы кажутся вам ужасно скучными. Привыкли высказываться даже в том случае, если недостаточно компетентны в обсуждаемом вопросе. Беретесь за любое дело, хотя не всегда можете успешно довести его до конца. Неудивительно, что руководители и коллеги относятся к вам с недоверием и никто не хочет выполнять с вами совместные задания.",
      # результат_3 - 14..18
      "С коммуникабельностью у вас все в порядке. Вы любознательны, терпеливы, внимательно слушаете интересного собеседника, спокойно отстаиваете свою точку зрения. Встреча с новыми людьми не вызывает у вас неприятных ощущений. Но многолюдные места, шумные компании и болтливые люди вызывают у вас раздражение.",
      # результат_4 - 19..24
      "В целом вы общительный человек. Новая обстановка и новые проблемы вас не пугают. И все таки с людьми вы сходитесь осторожно, постепенно, публично высказываетесь неохотно. Иногда ваши высказывания саркастичны, даже безо всякого на то основания.",
      # результат_5 - 25..29
      "Вы неразговорчивы, предпочитаете одиночество шумным компаниям. Друзей у вас совсем немного. Новая работа и новые люди вызывают у вас чувство дискомфорта. Эта особенность характера не ускользнула от вашего внимания, и вы часто сердитесь на себя за нее. Вспомните, как легко вы общаетесь, когда чем то очень увлечены. Ведь можете же, когда хотите.",
      # результат_6 - 30..31
      "Что скрывать, вы некоммуникабельны, и страдаете от этого прежде всего сами. Но и окружающим очень трудно с вами, ведь там, где необходимы совместные усилия, вы совершенно теряетесь. Почему вы так неохотно общаетесь? Неужели в вашем окружении совсем нет интересных людей? Попробуйте потренировать свою общительность — обращайтесь к людям с различными вопросами, пусть даже для начала они будут касаться только работы."
      ]
  end

def exec
  case @score
  when <= 3 puts @result[0]
  when <= 8 puts @result[1]
  when <= 13 puts @result[2]
  when <= 18 puts @result[3]
  when <= 24 puts @result[4]
  when <= 29 puts @result[5]
  else
    puts @result[6]
  end
end

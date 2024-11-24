gra <- function(wybór) {
  opcje_do_wyboru <- c("kamień", "papier", "nożyce")
  komputer <- sample(opcje_do_wyboru, 1) #komputer losowo wybieraja kamień, papier lub nożyce
  
  print(paste("Komputer: ", komputer))
  print(paste("Użytkownik: ", wybór))
  cat("\n")
  
  if(wybór=="kamień") {
    if(komputer=="papier")  {
      print("Przegrałeś!")
      return(0)
    } else if(komputer=="kamień"){
      print("Remis!")
      return(0)
    }
    else {
      print("Gratulacje! Wygrałeś")
      return(1)
    }
    
  } else if(wybór=="papier") {
    if(komputer=="nożyce"){
      print("Przegrałeś!")
      return(0)
    }else if(komputer=="papier"){
      print("Remis!")
      return(0)
    }
    else {
      print("Gratulacje! Wygrałeś")
      return(1)
    }
    
  }else if(wybór == "nożyce") {
    if(komputer=="kamień") {
      print("Przegrałeś!")
      return(0)
    }else if(komputer=="nożyce"){
      print("Remis!")
      return(0)
    }
    else {
      print("Gratulacje! Wygrałeś")
      return(1)
    }
    #zasady gry (kamień przegrywa z papierem, papier z nożycami, nożyce z kamieniem) 
    #remis następuje gdy komputer dokona tego samego wyboru co użytkownik
    
  } else {
    if(wybór == "q") print("Do zobaczenia!")
    else print("Błędny wybór!")
    return(-1)
  }
  #jeśli użytkownik wybierze opcję spoza opcji_do_wyboru, gra wyświetla opcję "błędny wybór"
  
}

wybór_gracza <- ""
while(wybór_gracza != "q") {
  wybór_gracza <- readline("Twój wybór: ")
  gra(wybór_gracza)
} #przy uruchomieniu gry komputer wyświetla komunikat "Twój wybór" - należy wtedy wprowadzić jedną z trzech opcji_do_wyboru
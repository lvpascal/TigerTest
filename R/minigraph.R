#' @export
minigraph <- function(tab, tab2=NULL, size = 1){
  stopifnot(class(tab)=='data.frame')
  stopifnot(dim(tab)[1]<=3)#number of  rows longer than the function is meant to deal with
  stopifnot(dim(tab)[2]<=2)#number of cols longer than the function is meant to deal with
  
  if(is.null(tab2)){
    n <- nrow(tab)
    if (n ==3){
      graphics::par(mfrow = c(1,1))
      y1 <- paste0(tab[1,2],' time steps')
      y2 <- paste0(tab[2,2],' time steps')
      a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
      a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
      a3 <- switch (as.numeric(as.character(tab[3,1])),'MANAGE','SURVEY','STOP')
      fpath <- system.file("extdata", "im3.jpg", package="smsPOMDP")
      t <- imager::load.image(file=fpath)
      graphics::plot(t, axes = FALSE)
      graphics::text(200,200,'Not seen for', cex = size)
      graphics::text(200, 250, y1, cex = size)
      graphics::text(500,450, 'Seen', cex = size)
      graphics::text(600,600, 'Not seen for', cex = size)
      graphics::text(600,650, y2, cex = size)
      graphics::text(1000,200,'Seen', cex = size)
      graphics::text(620, 175, a1, cex = size)
      graphics::text(200, 625, a2, cex = size)
      graphics::text(1050, 625, a3, cex = size)
    } else if (n ==2){
      y1 <- paste0(tab[1,2],' time steps')
      a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
      a2 <- switch (as.numeric(as.character(tab[2,1])), 'MANAGE','SURVEY','STOP')
      fpath <- system.file("extdata", "im2.jpg", package="smsPOMDP")
      t <- imager::load.image(file=fpath)
      graphics::plot(t, axes = FALSE)
      graphics::text(525,400,'Not seen for', cex = size)
      graphics::text(525, 450, y1, cex = size)
      graphics::text(1000,200,'Seen', cex = size)
      graphics::text(620, 150, a1, cex = size)
      graphics::text(1050, 600, a2, cex = size)
    } else if (n ==1){
      a1 <- switch (as.numeric(as.character(tab[1,1])),'MANAGE','SURVEY','STOP')
      fpath <- system.file("extdata", "im1.jpg", package="smsPOMDP")
      t <- imager::load.image(file=fpath)
      graphics::plot(t, axes = FALSE)
      graphics::text(650, 350, a1, cex = size*3)
    }
  } else {
    stopifnot(class(tab2)=='data.frame')
    stopifnot(dim(tab2)[1]<=3)#number of  rows longer than the function is meant to deal with
    stopifnot(dim(tab2)[2]<=2)#number of cols longer than the function is meant to deal with
    
    n <- nrow(tab)
    n2 <- nrow(tab2)
    if (n2==3){
      #text for solution if starting from c(1,0)
      a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
      a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
      a3 <- switch (as.numeric(as.character(tab[3,1])),'MANAGE','SURVEY','STOP')
      y1 <- paste0(tab[1,2],' time steps')
      y2 <- paste0(tab[2,2],' time steps')

      #text for solution if starting from another state prior
      a4 <- switch (as.numeric(as.character(tab2[1,1])), 'MANAGE','SURVEY','STOP')
      a5 <- switch (as.numeric(as.character(tab2[2,1])),'MANAGE','SURVEY','STOP')
      a6 <- switch (as.numeric(as.character(tab2[3,1])),'MANAGE','SURVEY','STOP')
      y3 <- paste0(tab2[1,2],' time steps')
      y4 <- paste0(tab2[2,2],' time steps')
      fpath <- system.file("extdata", "im3_3.jpg", package="smsPOMDP")
      t <- imager::load.image(file=fpath)
      
      graphics::plot(t, axes = FALSE)
      #text for solution if starting from c(1,0)
      graphics::text(740,300,'Not seen for', cex = size)
      graphics::text(740, 350, y1, cex = size)
      graphics::text(1200,650,'Not seen for', cex = size)
      graphics::text(1200, 700, y2, cex = size)
      graphics::text(850,450, 'Seen', cex = size)
      graphics::text(1150,300, 'Seen', cex = size)
      graphics::text(920, 200, a1, cex = size)
      graphics::text(700, 600, a2, cex = size)
      graphics::text(1150, 520, a3, cex = size)

      #text for solution if starting from another state prior
      graphics::text(100,200,'Not seen for', cex = size)
      graphics::text(100, 250, y3, cex = size)
      graphics::text(100,420,'Not seen for', cex = size)
      graphics::text(100, 470, y4, cex = size)
      graphics::text(400,80, 'Seen', cex = size)
      graphics::text(400,300, 'Seen', cex = size)
      graphics::text(400,580, 'Seen', cex = size)
      graphics::text(200, 100, a4, cex = size)
      graphics::text(200, 330, a5, cex = size)
      graphics::text(200, 560, a6, cex = size)

    } else if (n2==2){
      if (n == 3){
        #text for solution if starting from c(1,0)
        a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
        a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
        a3 <- switch (as.numeric(as.character(tab[3,1])),'MANAGE','SURVEY','STOP')
        y1 <- paste0(tab[1,2],' time steps')
        y2 <- paste0(tab[2,2],' time steps')

        #text for solution if starting from another state prior
        a4 <- switch (as.numeric(as.character(tab2[1,1])), 'MANAGE','SURVEY','STOP')
        a5 <- switch (as.numeric(as.character(tab2[2,1])),'MANAGE','SURVEY','STOP')
        y3 <- paste0(tab2[1,2],' time steps')
        fpath <- system.file("extdata", "im3_2.jpg", package="smsPOMDP")
        t <- imager::load.image(file=fpath)

        graphics::plot(t, axes = FALSE)
        #text for solution if starting from c(1,0)
        graphics::text(740,300,'Not seen for', cex = size)
        graphics::text(740, 350, y1, cex = size)
        graphics::text(1200,650,'Not seen for', cex = size)
        graphics::text(1200, 700, y2, cex = size)
        graphics::text(850,450, 'Seen', cex = size)
        graphics::text(1150,300, 'Seen', cex = size)
        graphics::text(920, 200, a1, cex = size)
        graphics::text(700, 600, a2, cex = size)
        graphics::text(1150, 520, a3, cex = size)

        #text for solution if starting from another state prior
        graphics::text(100,200,'Not seen for', cex = size)
        graphics::text(100, 250, y3, cex = size)
        graphics::text(400,80, 'Seen', cex = size)
        graphics::text(400,300, 'Seen', cex = size)
        graphics::text(200, 100, a4, cex = size)
        graphics::text(200, 330, a5, cex = size)

      } else if (n==2){
        #text for solution if starting from c(1,0)
        a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
        a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
        y1 <- paste0(tab[1,2],' time steps')

        #text for solution if starting from another state prior
        a4 <- switch (as.numeric(as.character(tab2[1,1])), 'MANAGE','SURVEY','STOP')
        a5 <- switch (as.numeric(as.character(tab2[2,1])),'MANAGE','SURVEY','STOP')
        y3 <- paste0(tab2[1,2],' time steps')
        
        fpath <- system.file("extdata", "im2_2.jpg", package="smsPOMDP")
        t <- imager::load.image(file=fpath)

        graphics::plot(t, axes = FALSE)
        #text for solution if starting from c(1,0)
        graphics::text(750,300,'Not seen for', cex = size)
        graphics::text(740, 350, y1, cex = size)
        graphics::text(1150,300, 'Seen', cex = size)
        graphics::text(920, 200, a1, cex = size)
        graphics::text(1150, 520, a2, cex = size)

        #text for solution if starting from another state prior
        graphics::text(100,200,'Not seen for', cex = size)
        graphics::text(100, 250, y3, cex = size)
        graphics::text(400,80, 'Seen', cex = size)
        graphics::text(400,300, 'Seen', cex = size)
        graphics::text(200, 100, a4, cex = size)
        graphics::text(200, 330, a5, cex = size)

      }

    } else if (n2==1){
      if (n == 3){
        #text for solution if starting from c(1,0)
        a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
        a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
        a3 <- switch (as.numeric(as.character(tab[3,1])),'MANAGE','SURVEY','STOP')
        y1 <- paste0(tab[1,2],' time steps')
        y2 <- paste0(tab[2,2],' time steps')

        #text for solution if starting from another state prior
        a4 <- switch (as.numeric(as.character(tab2[1,1])), 'MANAGE','SURVEY','STOP')
        fpath <- system.file("extdata", "im3_1.jpg", package="smsPOMDP")
        t <- imager::load.image(file=fpath)
        
        graphics::plot(t, axes = FALSE)
        #text for solution if starting from c(1,0)
        graphics::text(740,300,'Not seen for', cex = size)
        graphics::text(740, 350, y1, cex = size)
        graphics::text(1200,650,'Not seen for', cex = size)
        graphics::text(1200, 700, y2, cex = size)
        graphics::text(850,450, 'Seen', cex = size)
        graphics::text(1150,300, 'Seen', cex = size)
        graphics::text(920, 200, a1, cex = size)
        graphics::text(700, 600, a2, cex = size)
        graphics::text(1150, 520, a3, cex = size)

        #text for solution if starting from another state prior
        graphics::text(400,80, 'Seen', cex = size)
        graphics::text(200, 100, a4, cex = size)

      } else if (n==2){
        #text for solution if starting from c(1,0)
        a1 <- switch (as.numeric(as.character(tab[1,1])), 'MANAGE','SURVEY','STOP')
        a2 <- switch (as.numeric(as.character(tab[2,1])),'MANAGE','SURVEY','STOP')
        y1 <- paste0(tab[1,2],' time steps')

        #text for solution if starting from another state prior
        a4 <- switch (as.numeric(as.character(tab2[1,1])), 'MANAGE','SURVEY','STOP')
        a5 <- switch (as.numeric(as.character(tab2[2,1])),'MANAGE','SURVEY','STOP')
        y3 <- paste0(tab2[1,2],' time steps')

        fpath <- system.file("extdata", "im2_1.jpg", package="smsPOMDP")
        t <- imager::load.image(file=fpath)
        
        graphics::plot(t, axes = FALSE)
        #text for solution if starting from c(1,0)
        graphics::text(750,300,'Not seen for', cex = size)
        graphics::text(740, 350, y1, cex = size)
        graphics::text(1150,300, 'Seen', cex = size)
        graphics::text(920, 200, a1, cex = size)
        graphics::text(1150, 520, a2, cex = size)

        #text for solution if starting from another state prior
        graphics::text(400,80, 'Seen', cex = size)
        graphics::text(200, 100, a4, cex = size)
      } else if (n==1){
        a1 <- switch (as.numeric(as.character(tab[1,1])),'MANAGE','SURVEY','STOP')
        fpath <- system.file("extdata", "im1.jpg", package="smsPOMDP")
        t <- imager::load.image(file=fpath)
        graphics::plot(t, axes = FALSE)
        graphics::text(650, 350, a1, cex = size*3)
      }


    }

  }
}

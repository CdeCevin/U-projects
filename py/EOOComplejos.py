class complejos:
    def __init__(self,R,I):

        self.real = R
        self.imagionario = I
    
    def Creal(self):
        return self.real
    
    def CImaginario(self):
        return self.imagionario
    
    def sumax(self,real2,imagina2):
        return self.real+real2, self.imagionario+imagina2

    def moduloC(self):
        return(((self.real)**2)+((self.imagionario)**2))**(1/2)

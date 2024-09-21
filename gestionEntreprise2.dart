abstract class Employe {
  String name;
  int id;

  Employe(this.name, this.id);

  double calculSalaire();
}

class EmployePermanent extends Employe {
  int anciennete;
  double salaire;

  EmployePermanent(String name, int id, this.anciennete, this.salaire)
      : super(name, id);

  //@override
  double calculSalaire() {
    return salaire + anciennete * 100000;
  }
}

class EmployeContract extends Employe {
  int honoraire;
  double heureTravaillee;

  EmployeContract(String name, int id, this.honoraire, this.heureTravaillee)
      : super(name, id);

  //@override
  double calculSalaire() {
    return honoraire * heureTravaillee;
  }
}

void main() {
  EmployePermanent Rakoto = new EmployePermanent("Rakoto", 1, 5, 500000);
  EmployeContract Rabe = new EmployeContract("Rabe", 2, 30000, 30);

  print("${Rakoto.name} est un employé permanent" +
      " et son salaire est de ${Rakoto.calculSalaire()} ariary \n" +
      "${Rabe.name} est un contractuel" + 
      " et son salaire est de ${Rabe.calculSalaire()} ariary");
}

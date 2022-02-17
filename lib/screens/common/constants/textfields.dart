
import 'package:flutter/material.dart';

class FieldInput extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String labelname;
  final IconData prefix;
  const FieldInput(
      {Key? key, required this.type, required this.hint, required this.labelname, required this.prefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MedFastTextField(
      child: TextField(
        keyboardType: type,
        decoration: InputDecoration(
          hintText: hint,
          labelText: labelname,
         border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
          borderSide: BorderSide(color: Colors.black26),
                 
        ),
        prefixIcon: Icon(prefix)
        ),
      ),
    );
  }
}

class MedFastTextField extends StatelessWidget {
  final Widget child;
  const MedFastTextField({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      width: size.width * 0.9,
      child: child,
    );
  }
}

// the password textfield here
class PasswordTextField extends StatefulWidget {
  const PasswordTextField({ Key? key }) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late  bool obscured = true;
  @override
  Widget build(BuildContext context) {
    return  MedFastTextField(
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscured,
        decoration: InputDecoration(
          hintText: "Your Password",
          labelText: "Password",
         border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
          borderSide: BorderSide(color: Colors.black26),
                 
        ),
        prefixIcon: const Icon(Icons.lock),
         suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              obscured = !obscured;
            });
          },
          child:
          Icon(obscured ? Icons.visibility : Icons.visibility_off),
        ),

        
        ),
        
      ),
    );
  }
}

class AgreedCheckBox extends StatefulWidget {
  const AgreedCheckBox({ Key? key }) : super(key: key);

  @override
  _AgreedCheckBoxState createState() => _AgreedCheckBoxState();
}

class _AgreedCheckBoxState extends State<AgreedCheckBox> {
   bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Material(
              child: Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
              ),
            ),
            const Text(
              'I have read and accept terms and conditions',
              overflow: TextOverflow.ellipsis,
            )
          ],
        );
  }
}

class RegionDropDown extends StatefulWidget {
  const RegionDropDown({ Key? key,}) : super(key: key);

  @override
  _RegionDropDownState createState() => _RegionDropDownState();
}

class _RegionDropDownState extends State<RegionDropDown> {

  final List<String> regions = [
    'Arusha',
    'Dar es Salaam',
    'Dodoma',
    'Geita',  
    'Iringa',  
    'Kagera',  
    'Kaskazini Pemba',
    'Kaskazini Unguja',
    'Katavi',
    'Kigoma', 
    'Kilimanjaro',  
    'Kusini Pemba',
    'Kusini Unguja',
    'Lindi',  
    'Manyara',  
    'Mara',  
    'Mbeya',  
    'Mjini Magharibi',
    'Morogoro',  
    'Mtwara',  
    'Mwanza',  
    'Njombe',  
    'Pwani',  
    'Rukwa ',
    'Ruvuma', 
    'Shinyanga', 
    'Simiyu', 
    'Singida', 
    'Songwe', 
    'Tabora',
    'Tanga', 
    ];

  String? selectedRegion;

  @override
  Widget build(BuildContext context) {
    return MedFastTextField(
      child: DropdownButtonFormField(
        decoration:  const InputDecoration(
          labelText: "City",
          prefixIcon: Icon(Icons.location_on),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(29),
            ),
          ),
        ),
        
        items: regions.map((region){
          return DropdownMenuItem(
            value: region,
            child: Text(region),
          );
        }).toList(), 
        onChanged: (val) => setState(() =>
          selectedRegion = val as String?
        ),
        
      ),
    );
  }
}


// the regions drop down for patient
class RegionsDropClient extends StatefulWidget {
  const RegionsDropClient({ Key? key }) : super(key: key);

  @override
  _RegionsDropClientState createState() => _RegionsDropClientState();
}

class _RegionsDropClientState extends State<RegionsDropClient> {
  
  final List<String> regions = [
    'Arusha',
    'Dar es Salaam',
    'Dodoma',
    'Geita',  
    'Iringa',  
    'Kagera',  
    'Kaskazini Pemba',
    'Kaskazini Unguja',
    'Katavi',
    'Kigoma', 
    'Kilimanjaro',  
    'Kusini Pemba',
    'Kusini Unguja',
    'Lindi',  
    'Manyara',  
    'Mara',  
    'Mbeya',  
    'Mjini Magharibi',
    'Morogoro',  
    'Mtwara',  
    'Mwanza',  
    'Njombe',  
    'Pwani',  
    'Rukwa ',
    'Ruvuma', 
    'Shinyanga', 
    'Simiyu', 
    'Singida', 
    'Songwe', 
    'Tabora',
    'Tanga', 
    ];
    String? clientRegion;
  @override
  Widget build(BuildContext context) {
    return MedFastTextField(
      child: DropdownButtonFormField(
        decoration:  const InputDecoration(
          labelText: "Mkoa",
          prefixIcon: Icon(Icons.location_on),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(29),
            ),
          ),
        ),
        
        items: regions.map((region){
          return DropdownMenuItem(
            value: region,
            child: Text(region),
          );
        }).toList(), 
        onChanged: (val) => setState(() =>
          clientRegion = val as String?
        ),
        
      ),
    );
  }
}


class MedicalRanks extends StatefulWidget {
  const MedicalRanks({ Key? key }) : super(key: key);

  @override
  _MedicalRanksState createState() => _MedicalRanksState();
}

class _MedicalRanksState extends State<MedicalRanks> {
  final List<String> medicalRanks = [
    'MD',
    'ACO',
    'CO',
    'AMO',
    'MO',
  ];

  String? selectedRank;

  @override
  Widget build(BuildContext context) {
    return MedFastTextField(
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          hintText: 'Medical Rank',
          labelText: "Medical Rank",
          prefixIcon: Icon(Icons.note_add),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(29),
            ),
          ),
        ),
        
        items: medicalRanks.map((rank){
          return DropdownMenuItem(
            value: rank,
            child: Text(rank),
          );
        }).toList(), 
        onChanged: (val) => setState(() =>
          selectedRank = val as String?
        ),
        
      ),
    );
  }
}


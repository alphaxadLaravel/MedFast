
import 'package:flutter/material.dart';

import 'constants.dart';

// Re usable Text Field hii hapa
class FieldInput extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String labelname;
  final IconData prefix;
  final String prefixWord;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FormFieldValidator validate;
  const FieldInput(
      {Key? key, 
      required this.type, 
      required this.hint, 
      required this.labelname, 
      required this.prefix, 
      required this.onChanged, 
      required this.controller, 
      required this.validate, 
      required this.prefixWord
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MedFastTextField(
      child: TextFormField(
        keyboardType: type,
        onChanged: onChanged,            
        controller: TextEditingController(),
        validator: validate,
        decoration: InputDecoration(
          hintText: hint,
          labelText: labelname,
         prefix: Text(prefixWord),
         border:   inputBorder(),
         focusedBorder: focusedInputBorder(),
         focusedErrorBorder: focusedErrorBorder(),
         errorBorder: errorInputBorder(),
         prefixIcon: Icon(prefix)
        ),
      ),
    );
  }

}

// container inayobeba reusable textfield hii hapa
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
        validator: (value){
          if(value == null){
            return "Please fill the City";
          }
        },
        
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
        validator: (value){
          if(value == null){
            return "Tafadhali Jaza mkoa";
          }
        },
        
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
         validator: (value){
          if(value == null){
            return "Please fill the Medical Rank";
          }
        },
        
      ),
    );
  }
}


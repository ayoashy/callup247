import 'package:flutter/material.dart';

import 'responsive_text_styles.dart';
import 'service_provider_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchFocusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  List<String> filteredServices = []; // Initialize it as an empty list
  bool isTyping = false; // Initially, the user is not typing
  List<String> servicesList = [
    'Accountant',
    'Accounts Clerk',
    'Actor',
    'Actuary',
    'Acupuncturist',
    'Advertising Specialist',
    'Aeronautical Engineer',
    'Aged Person Carer',
    'Air Traffic Controller',
    'Aircraft Maintenance Engineer',
    'Aircraft Pilot',
    'Aircraft Safety Equipment Worker',
    'Ambulance Officer',
    'Amusement Centre',
    'Anaesthetist',
    'Anatomist',
    'Animal Attendant',
    'Animal Trainers',
    'Apiarist',
    'Apparel Cutter',
    'Application Programmer',
    'Aquaculture Farmer',
    'Architect',
    'Archivist',
    'Armoured Car Escort',
    'Art Director (Film, Television or Stage)',
    'Art Teacher (Private)',
    'Artistic Director',
    'Auctioneer',
    'Audiologist',
    'Author',
    'Automobile Driver',
    'Bailiff',
    'Baker',
    'Baking Factory',
    'Bar Attendant',
    'Barrister',
    'Beauty Therapist',
    'Binder and Finisher',
    'Biochemist',
    'Biomedical Engineer',
    'Blacksmith',
    'Blogger',
    'Boat Builder and Repairer',
    'Book Editor',
    'Bookkeeper',
    'Bookmaker',
    'Botanist',
    'Bricklayer',
    'Butcher',
    'Cabinetmaker',
    'Cable Jointer',
    'Café',
    'Camera Operator (Film, Television or Video)',
    'Canvas Goods Maker',
    'Car Park',
    'Car Rental Agency',
    'Car Wash',
    'Caravan Park and Camping Ground',
    'Careers Counsellor',
    'Caretaker',
    'Carpenter',
    'Carpet Cleaner',
    'Cartographer',
    'Chef',
    'Chemist',
    'Child Minder',
    'Chiropractor',
    'Cinema',
    'Clinical Psychologist',
    'Club',
    'Coding Clerk',
    'Consultant',
    'Commercial Cleaner',
    'Company Secretary',
    'Composer',
    'Computer Systems Auditor',
    'Computing Technician',
    'Cook',
    'Copywriter',
    'Dance Teacher (Private)',
    'Dancer or Choreographer',
    'Debt Collector',
    'Delivery Driver',
    'Dental Hygienist',
    'Dentist',
    'Dermatologist',
    'Desktop Publishing Operator',
    'Dietitian',
    'Disabled Person Carer',
    'Diver',
    'Domestic Cleaner',
    'Domestic Housekeeper',
    'Door-to-Door Salesperson',
    'Doorperson',
    'Drainer',
    'Drama Teacher (Private)',
    'Dressmaker',
    'Driller',
    'Driving Instructor',
    'Drug and Alcohol Counsellor',
    'Economist',
    'Editor',
    'Educational Psychologist',
    'Electrical Engineer',
    'Electrical Engineering Technician',
    'Electrician',
    'Engine or Boiler Operator',
    'Examination Supervisor',
    'Excavator Operator',
    'External Auditor',
    'Fabric and Textile Factory',
    'Family Counsellor',
    'Family Day Care',
    'Family Support Worker',
    'Farm Overseer',
    'Fashion Designer',
    'Fast Food Cook',
    'Fence Erector',
    'Film and Video Editor',
    'Financial Investment Adviser',
    'Financial Market Dealer',
    'Fire Fighter',
    'Fisherman',
    'Fitness Centre',
    'Fitness Instructor',
    'Fitter',
    'Flight Engineer',
    'Floor Finisher',
    'Florist',
    'Flying Instructor',
    'Footballer',
    'Forester',
    'Forklift Driver',
    'Freight Handler',
    'Fruit, Vegetable or Nut Farm Hand',
    'Funeral Director',
    'Furniture Removers',
    'Furniture Upholsterer',
    'Garbage Collector',
    'Garden Labourer',
    'Gasfitter',
    'Gem Cutter and Polisher',
    'General Construction Plant Operator',
    'General Electrician',
    'Gymnastics Coach',
    'Gynaecologist',
    'Hair and Beauty Salon',
    'Hairdresser',
    'Hand Packer',
    'Handyperson',
    'Heavy Truck Driver',
    'Historian',
    'Home Improvements Installer',
    'Horse Breeder',
    'Horse Trainer',
    'Horse-riding Coach',
    'Hospital',
    'Hospitality Agency',
    'Hotel or Motel',
    'Illustrator',
    'Importer or Exporter',
    'Instrumental Musician',
    'Insurance Agent',
    'Insurance Broker',
    'Interior Decorator/Design',
    'Internal Auditor',
    'Interpreter',
    'Interviewer',
    'Jeweller',
    'Judge',
    'Kitchen Porter',
    'Kitchenhand',
    'Landscape Architect',
    'Landscape Gardener',
    'Launderette',
    'Leaflet and Newspaper Deliverer',
    'Legal Professionals',
    'Librarian',
    'Lift Mechanic',
    'Light Technician',
    'Loader Operator',
    'Locksmith',
    'Luggage Porter',
    'Magistrate court',
    'Make Up Artist',
    'Management Consultant',
    'Manufacturer',
    'Marketing Specialist',
    'Marketing Officer',
    'Massage Therapist',
    'Masseuse',
    'Master Fisher',
    'Materials Engineer',
    'Materials Recycler',
    'Mathematician (Teacher)',
    'Mechanical Engineer',
    'Mechanical Services and Air-conditioning Plumber',
    'Media Producer',
    'Metal Fabricator',
    'Metal Machinist',
    'Meteorologist',
    'Meter Reader',
    'Miner',
    'Minister of Religion',
    'Model',
    'Motor Mechanic',
    'Motor Vehicle and Caravan Salesperson',
    'Museum or Art Gallery',
    'Music Director',
    'Music Teacher (Private)',
    'Nanny',
    'Natural Remedy Consultant',
    'Naturopath',
    'Naval Architect',
    'Nuclear Medicine Technologist',
    'Nurse',
    'Nurseryperson',
    'Obstetrician',
    'Occupational Health and Safety Officer',
    'Occupational Therapist',
    'Oenologist',
    'Ophthalmologist',
    'Optical Mechanic',
    'Optometrist',
    'Orthoptist',
    'Osteopath',
    'Others - Please Specify',
    'Packager and Container Filler',
    'Paediatrician',
    'Painter (Visual Arts)',
    'Painter and Decorator',
    'Park Ranger',
    'Parking Inspector',
    'Paving and Surfacing Labourer',
    'Paving Plant Operator',
    'Personal Assistant',
    'Pest and Weed Controller',
    'Petroleum and Gas Plant Operator',
    'Petroleum Engineer',
    'Photographer',
    'Photographic Developer and Printer',
    'Physicist',
    'Physiologist',
    'Physiotherapist',
    'Plumber',
    'Plumbing Inspector',
    'Podiatrist',
    'Police Station',
    'Post Office',
    'Postal Delivery Office',
    'Postal Sorting Office',
    'Poultry Farm',
    'Pre-Primary School Teacher',
    'Pressure Welder',
    'Primary School Teacher',
    'Print Journalist',
    'Printing Machinist',
    'Private Investigator',
    'Product Assembler',
    'Product Examiner',
    'Production manager (Film, Television or Radio)',
    'Program Director (Radio or Television)',
    'Project Builder',
    'Proof Reader',
    'Property Manager',
    'Psychiatrist',
    'Purchasing Officer',
    'Quality Assurer',
    'Quantity Surveyor',
    'Radiation Therapist',
    'Radio Journalist',
    'Radio Operator',
    'Radio Presenter',
    'Radiologist',
    'Real Estate Agency',
    'Real Estate Salesperson',
    'Receptionist',
    'Refrigeration and Air-conditioning Mechanic',
    'Registered Developmental Disability Nurse',
    'Registered Mental Health Nurse',
    'Registered Midwife',
    'Registered Nurse',
    'Registry or Filing Office',
    'Residential Care Office',
    'Restaurant',
    'Roof Plumber',
    'Roof Slater and Tiler',
    'Scaffolder',
    'Script Editor',
    'Sculptor',
    'Secondary School Tutor',
    'Secretary',
    'Security Officer',
    'Sewing Machinist',
    'Shoemaker',
    'Signwriter',
    'Singer',
    'Social Worker',
    'Solicitor',
    'Sound Technician',
    'Special Needs Teacher',
    'Specialist Physician',
    'Speech Pathologist',
    'Stockbroking Dealer',
    'Studio',
    'Surgeon',
    'Surveyor',
    'Swimming Coach',
    'Switchboard Operator',
    'Systems Designer',
    'Tailor',
    'Technical Director',
    'Technical Writer',
    'Telemarketer',
    'Television Journalist',
    'Television Presenter',
    'Tennis Coach',
    'Theatre',
    'Tourist/Tour office',
    'Tram Driver',
    'Translator',
    'Travel Agency',
    'Travel Agent',
    'Truck Driver',
    'Typist and Word Processing Operator',
    'Valuer',
    'Vehicle Body Maker',
    'Vehicle Cleaner',
    'Vehicle Painter',
    'Veterinarian',
    'Veterinary Nurse',
    'Visual Arts and Crafts Professionals',
    'Visual Merchandiser',
    'Wall and Floor Tiler',
    'Watch and Clock Maker and Repairer',
    'Water and Waste Water Plant Operator',
    'Water Inspector',
    'Weaving Machine Operator',
    'Weight Loss Consultant',
    'Welder',
    'Wholesale',
    'Window Cleaner',
    'Wood Machinist',
    'Wood Tradespersons',
    'Wood Turner',
    'Wool Classer',
    'Xylophonist',
    'Zoologist',
  ]; // Your list of services
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
          child: FocusScope(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 75,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/guest_dp.png'),
                              radius: 30,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'editProfile',
                                    child: const Text(
                                      'Edit Profile',
                                    ),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'theme',
                                    child: const Text(
                                      'Theme',
                                    ),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'customerCare',
                                    child: const Text('Customer Care'),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'termsAndConditions',
                                    child: const Text('Terms and Conditions'),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'signOut',
                                    child: const Text('Sign Out'),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                // Handle the selected menu item (navigate to the corresponding screen)
                                if (value == 'editProfile') {
                                  // Navigate to the edit profile screen
                                } else if (value == 'theme') {
                                  // Navigate to the theme screen
                                } // Add more cases for other menu items
                              },
                            ),
                          ],
                        ),
                        Text(
                          'guestuser',
                          style: responsiveTextStyle(
                              context, 16, Colors.white, FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _controller,
                        focusNode: searchFocusNode,
                        showCursor: false,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                              radius: 50,
                              splashColor: Colors.greenAccent,
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                // _controller.clear();
                                // setState(() {
                                //   filteredServices = [];
                                // });
                              },
                              child: const Icon(
                                Icons.cancel,
                                color: Colors.black,
                              )),
                          hintText: 'Search...',
                        ),
                        onChanged: (value) {
                          setState(() {
                            // Filter services here and update UI.
                            filteredServices = servicesList
                                .where((service) => service
                                    .toLowerCase()
                                    .startsWith(value.toLowerCase()))
                                .toList();
                            if (value.isNotEmpty) {
                              isTyping =
                                  true; // User is typing, hide the content above
                            } else {
                              isTyping =
                                  false; // User has stopped typing, show the content above
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: isTyping, // Content is visible when typing
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                      itemCount: filteredServices.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            filteredServices[index],
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold),
                          ),
                          onTap: () {
                            // Handle user selection here.
                          },
                        );
                      },
                    ),
                  ),
                ),
                // Display service providers for the selected service here.
                // ServiceProviderCard(
                //   name: 'John Doe',
                //   bio:
                //       'Experienced plumber with 5+ years of experience in fixing pipes.',
                //   image: 'assets/plumber.jpg',
                //   onPressedButton1: () {
                //     // Implement the action for Button 1 here.
                //   },
                //   onPressedButton2: () {
                //     // Implement the action for Button 2 here.
                //   },
                //   isOnline:
                //       true, // Set whether the service provider is online or offline.
                // ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                // ServiceProviderCard(
                //   name: 'Senior Centy',
                //   bio:
                //       'Experienced barber with 5+ years of experience in cutting hair.',
                //   image: 'assets/barber.jpg',
                //   onPressedButton1: () {
                //     // Implement the action for Button 1 here.
                //   },
                //   onPressedButton2: () {
                //     // Implement the action for Button 2 here.
                //   },
                //   isOnline:
                //       false, // Set whether the service provider is online or offline.
                // ),
                // saved searches
                Visibility(
                    visible: !isTyping, // Content is visible when not typing
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15),
                        Text(
                          'Saved Searches',
                          style: responsiveTextStyle(
                              context, 20, null, FontWeight.bold),
                        ),
                        SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 0.0125),
                        ServiceProviderCard(
                          name: 'John Doe',
                          bio:
                              'Experienced plumber with 5+ years of experience in fixing pipes.',
                          image: 'assets/plumber.jpg',
                          onPressedButton1: () {
                            // Implement the action for Button 1 here.
                          },
                          onPressedButton2: () {
                            // Implement the action for Button 2 here.
                          },
                          isOnline:
                              true, // Set whether the service provider is online or offline.
                        ),
                        SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 0.0125),
                        ServiceProviderCard(
                          name: 'Senior Centy',
                          bio:
                              'Experienced barber with 5+ years of experience in cutting hair.',
                          image: 'assets/barber.jpg',
                          onPressedButton1: () {
                            // Implement the action for Button 1 here.
                          },
                          onPressedButton2: () {
                            // Implement the action for Button 2 here.
                          },
                          isOnline:
                              false, // Set whether the service provider is online or offline.
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

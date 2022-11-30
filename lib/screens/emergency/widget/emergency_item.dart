// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unnecessary_null_comparison, unnecessary_brace_in_string_interps, await_only_futures, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mhm/provider/call_provider.dart';
import 'package:provider/provider.dart';
import '../../../utils/constants/style.dart';
import '../constant/emergency_model.dart';

class EmergencyItem extends StatelessWidget {
  EmergencyModel emerM;

  EmergencyItem({
    required this.emerM,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              emerM.image,
              height: 50,
              width: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      emerM.name,
                      style: smallBold,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          emerM.phone,
                          style: smallBoldGrey,
                        ),
                        SizedBox(width: 20),
                        IconButton(
                            onPressed: () {
                              Provider.of<CallProvider>(context, listen: false)
                                  .callSend(emerM.phone);
                            },
                            icon: Icon(
                              Icons.phone,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    if (emerM.phone2 != null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            emerM.phone2!,
                            style: smallBoldGrey,
                          ),
                          SizedBox(width: 20),
                          IconButton(
                              onPressed: () {
                                Provider.of<CallProvider>(context, listen: false)
                                    .callSend(emerM.phone2!);
                              },
                              icon: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// return Card(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: Dimensions.PADDING_SIZE_DEFAULT,
//             vertical: Dimensions.PADDING_SIZE_SMALL),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 5),
//             Text(
//               'Name : ${emerM.name}',
//               style: smallBold,
//               textAlign: TextAlign.justify,
//             ),
//             SizedBox(height: 15),
//             Divider(),
//             ListTile(
//               dense: true,
//               title: Text(
//                 emerM.phone,
//                 style: smallBoldGrey,
//               ),
//               trailing: IconButton(
//                   onPressed: () {
//                     Provider.of<CallProvider>(context, listen: false)
//                         .callSend(emerM.phone);
//                   },
//                   icon: Icon(Icons.phone)),
//             ),
//             Divider(),
//             if (emerM.phone2 != null)
//               ListTile(
//                 dense: true,
//                 title: Text(
//                   emerM.phone2!,
//                   style: smallBoldGrey,
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {
//                       Provider.of<CallProvider>(context, listen: false)
//                           .callSend(emerM.phone2!);
//                     },
//                     icon: Icon(Icons.phone)),
//               ),
//           ],
//         ),
//       ),
//     );

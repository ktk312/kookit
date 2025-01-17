import 'package:flutter/material.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class UpdateDevice extends StatelessWidget {
  const UpdateDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Update Device'),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppGaps.hGap16,
              const HeadingText(
                text: 'Device Name:',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFF78716C),
              ),
              AppGaps.hGap10,
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.darkBlueColor)),
                child: const CustomText(
                  text: 'Device abc',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap20,
              Center(
                child: CustomButton(
                  text: 'Update',
                  onPressed: () {},
                ),
              ),
              AppGaps.hGap20,
              const CustomText(
                text: 'Device registered under other users',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/3060/6b04/936f6e0fcf1cf8ed5d81267cf214f5c0?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LgP6r0ZqGZTQiWCysf25aSadAd8SPx~qyc5vyPgPQkGyXcMO1O3aYKgAWGaEGHj76Gn~5b0w2W-ZzQw9WmKDAZGG3FdT8xEjxXKldm9a9JgpVK5e48wjFsJgYhoLtqVDnvLmjL35EebBV-q1LVbGEb3e8R4RiQaqKJ8BkwttKDFsf~wNX8KN~D1aavlgTb5jTyGebNYPEhjXZ6jloJ1MUozmCWhueCSNgYZQOzZDnMLMN0~3flvH4-lI16Z0GrjK-zDcXQ8SmPZX2PcJDytpoWAvbfs6~Li0ZdTKb~e9HDkS0WPzM-U88sc6qsXX0jAELqX9gD9aapIT8LkM4EBlSA__',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Asitha Fernando',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/3010/b822/9f0999d8fb07e0cbc252ce6175cdc837?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AdwGbHy-Opa0BV7VVb1w6-V0KUJ3FV4pEATxSfNVK06AGsQs0Z2lho7bCAlXvwzQVNm40Y9GFJrQ-7He1q5G6vjbUTod2~Ap7zIcvq1ZsUjFMwSaWsj7cSsXlbhirVwsMOvGV~GKSpKrESoLR8Rb~d8EbrcbEEu-rvzvt2Jtp4bqI3L45mEZ8fno~yDnqAUStaOOKU8qLUZEhL9WiRvMsUMIUWhwmDF5eZEwEtHie-XS~SQC0bY73N7qZcLnINt88FrrWonewfFbi0SL6BjY7bnjDvnL8Tqa51BeQYNY0Bp9FTfQa30Kpeh56JGCbhunA0AK4bL4fPR42DTqyig7yA__',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Gargi Bhogle',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/abf3/5dc7/46437a0b18362b03e1ba3171f288309e?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AcYt2UzSmNRt4wn0k26LdwuSyvNDNtYzo5~bQRBNEIlI4BNhHDM45ylb3lJXiXg4QT~W2P8dLS4soF2ipR2J~k9hdAAYtfoYUNIWf6MVNtgNybQo7oDvfxmsVsHT~xVkWipvJmuKE6DzLunUOjOa3xsdFuHbN55yS9Cz78SA25C8wV0n~XP~A6kXADQ2XsONzg9HAFHHL1XDZb2JIj99q7QN3aUBlljWKNUw0BQepu-5CEhRT1tjVcimnWAgXhAswJbHTy-YIa0B-wTWiLw~9-V6uGsP6D6zqFUXBreflN8LqJjpTU4fgnPuhAmisuqkRhucajg3iNRtepA5Q3ZINw__',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Brandon King',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap20,
              const CustomText(
                text: 'Device Status',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              AppGaps.hGap15,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE6EEF8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Warranty',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBlueColor,
                    ),
                    HeadingText(
                      text: 'Life Time Guarantee',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF525252),
                    ),
                  ],
                ),
              ),
              AppGaps.hGap15,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE6EEF8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Firmware Version',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBlueColor,
                    ),
                    HeadingText(
                      text: '1.01.01',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF525252),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

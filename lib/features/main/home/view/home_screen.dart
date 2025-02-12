import 'package:flutter/material.dart';
import 'package:motels/app_exports.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timestamp) async {
      await _setupConfigs();
    });
  }

  Future<void> _setupConfigs() async {
    await context.read<HomeViewModel>().setupConfigs();
  }

  @override
  Widget build(BuildContext context) {
    final homeVM = context.watch<HomeViewModel>();
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: HomeAppBar(
        homeViewModel: homeVM,
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 60.height, minHeight: 60.height),
            child: PageView(
              controller: homeVM.pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              reverse: true,
              children: [
                HeaderGoNowWidget(
                  homeViewModel: homeVM,
                ),
                HeaderGoAnotherDayWidget(
                  viewModel: homeVM,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: context.colors.neutralShade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.adaptive),
                topRight: Radius.circular(16.adaptive),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 12.height),
                FilterWidget(homeViewModel: homeVM),
                LineDividerWidget(
                  firstPadding: 12.height,
                  secondPadding: 0,
                ),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: homeVM.screenLoaded,
            builder: (context, isLoaded, _) {
              return !isLoaded
                  ? const Expanded(
                      child: SkeletonGoNowWidget(),
                    )
                  : Expanded(
                      child: GoNowBody(
                        homeViewModel: homeVM,
                      ),
                    );
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.height),
        child: FloatingActionButton.extended(
          elevation: 2,
          backgroundColor: context.colors.neutralWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.adaptive)),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                PhosphorIconsRegular.mapTrifold,
                color: context.colors.primary,
                size: 24.icon,
              ),
              SizedBox(width: 8.width),
              Text(
                'mapa',
                style: context.textStyles.bodyTextMedium,
              ),
            ],
          ),
          onPressed: _onMapPressed,
        ),
      ),
    );
  }

  void _onMapPressed() {}
}

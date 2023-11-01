import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/features/about/screens/about_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/appartment_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/door_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/insualtion_canvas_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/seal_perimeter_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/window_slopes_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/insulation_instalation_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/loggia_balcony_inside_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/loggia_balcony_outside_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/loggia_balcony_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/preparatory_work_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/film_application_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/instalation_seal_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/insulation_pvc_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/insulation_slopes_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/sealing_cracks_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/window_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_billing_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_concrete_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_film_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_under_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_billing_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_outside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_plastic_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_polyurethane_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_attic_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_outside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_material_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_preparation_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/thick_layer_plaster_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/thin_layer_plaster_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/wall_process_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_screen.dart';
import 'package:zhyluu_ui/features/main/screens/main_screen.dart';
import 'package:zhyluu_ui/features/house/screens/house_screen.dart';
import 'package:zhyluu_ui/features/starting/screens/starting_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/thickness_dimensions_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_ceiling_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_floor_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_fundament_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_container_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_roof_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_wall_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_windows_doors_screen.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      redirect: (context, state) => StartingScreen.routeName,
    ),
    GoRoute(
      path: StartingScreen.routeName,
      builder: (context, state) => const StartingScreen(),
    ),
    GoRoute(
      path: MainScreen.routeName,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: AboutScreen.routeName,
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: ThicknessDimensionsScreen.routeName,
      builder: (context, state) => const ThicknessDimensionsScreen(),
    ),
    GoRoute(
      path: HouseScreen.routeName,
      builder: (context, state) => const HouseScreen(),
    ),
    GoRoute(
      path: FloorScreen.routeName,
      builder: (context, state) => const FloorScreen(),
    ),
    GoRoute(
      path: FloorBillingScreen.routeName,
      builder: (context, state) => const FloorBillingScreen(),
    ),
    GoRoute(
      path: FloorConcreteScreen.routeName,
      builder: (context, state) => const FloorConcreteScreen(),
    ),
    GoRoute(
      path: FloorFilmScreen.routeName,
      builder: (context, state) => const FloorFilmScreen(),
    ),
    GoRoute(
      path: FloorUnderScreen.routeName,
      builder: (context, state) => const FloorUnderScreen(),
    ),
    GoRoute(
      path: FundamentScreen.routeName,
      builder: (context, state) => const FundamentScreen(),
    ),
    GoRoute(
      path: FundamentInsideScreen.routeName,
      builder: (context, state) => const FundamentInsideScreen(),
    ),
    GoRoute(
      path: FundamentOutsideScreen.routeName,
      builder: (context, state) => const FundamentOutsideScreen(),
    ),
    GoRoute(
      path: FundamentBillingScreen.routeName,
      builder: (context, state) => const FundamentBillingScreen(),
    ),
    GoRoute(
      path: FundamentPlasticScreen.routeName,
      builder: (context, state) => const FundamentPlasticScreen(),
    ),
    GoRoute(
      path: FundamentPolyurethaneScreen.routeName,
      builder: (context, state) => const FundamentPolyurethaneScreen(),
    ),
    GoRoute(
      path: RoofScreen.routeName,
      builder: (context, state) => const RoofScreen(),
    ),
    GoRoute(
      path: RoofInsideScreen.routeName,
      builder: (context, state) => const RoofInsideScreen(),
    ),
    GoRoute(
      path: RoofOutsideScreen.routeName,
      builder: (context, state) => const RoofOutsideScreen(),
    ),
    GoRoute(
      path: RoofAtticScreen.routeName,
      builder: (context, state) => const RoofAtticScreen(),
    ),
    GoRoute(
      path: WallScreen.routeName,
      builder: (context, state) => const WallScreen(),
    ),
    GoRoute(
      path: WallInsideScreen.routeName,
      builder: (context, state) => const WallInsideScreen(),
    ),
    GoRoute(
      path: WallMaterialScreen.routeName,
      builder: (context, state) => const WallMaterialScreen(),
    ),
    GoRoute(
      path: WallPreparationScreen.routeName,
      builder: (context, state) => const WallPreparationScreen(),
    ),
    GoRoute(
      path: WallProcessScreen.routeName,
      builder: (context, state) => const WallProcessScreen(),
    ),
    GoRoute(
      path: ThickLayerPlasterScreen.routeName,
      builder: (context, state) => const ThickLayerPlasterScreen(),
    ),
    GoRoute(
      path: ThinLayerPlasterScreen.routeName,
      builder: (context, state) => const ThinLayerPlasterScreen(),
    ),
    GoRoute(
      path: AppartmentScreen.routeName,
      builder: (context, state) => const AppartmentScreen(),
    ),
    GoRoute(
      path: LoggiaBalconyScreen.routeName,
      builder: (context, state) => const LoggiaBalconyScreen(),
    ),
    GoRoute(
      path: LoggiaBalconyInsideScreen.routeName,
      builder: (context, state) => const LoggiaBalconyInsideScreen(),
    ),
    GoRoute(
      path: LoggiaBalconyOutsideScreen.routeName,
      builder: (context, state) => const LoggiaBalconyOutsideScreen(),
    ),
    GoRoute(
      path: PreparatoryWorkScreen.routeName,
      builder: (context, state) => const PreparatoryWorkScreen(),
    ),
    GoRoute(
      path: InsulationInstalationWorkScreen.routeName,
      builder: (context, state) => const InsulationInstalationWorkScreen(),
    ),
    GoRoute(
      path: WindowScreen.routeName,
      builder: (context, state) => const WindowScreen(),
    ),
    GoRoute(
      path: InstalationPVCScreen.routeName,
      builder: (context, state) => const InstalationPVCScreen(),
    ),
    GoRoute(
      path: InstalationSealScreen.routeName,
      builder: (context, state) => const InstalationSealScreen(),
    ),
    GoRoute(
      path: InstalationSlopesScreen.routeName,
      builder: (context, state) => const InstalationSlopesScreen(),
    ),
    GoRoute(
      path: FilmApplicationScreen.routeName,
      builder: (context, state) => const FilmApplicationScreen(),
    ),
    GoRoute(
      path: SealingCracksScreen.routeName,
      builder: (context, state) => const SealingCracksScreen(),
    ),
    GoRoute(
      path: DoorScreen.routeName,
      builder: (context, state) => const DoorScreen(),
    ),
    GoRoute(
      path: InsulationCanvasScreen.routeName,
      builder: (context, state) => const InsulationCanvasScreen(),
    ),
    GoRoute(
      path: SealPerimeterScreen.routeName,
      builder: (context, state) => const SealPerimeterScreen(),
    ),
    GoRoute(
      path: WindowSlopesScreen.routeName,
      builder: (context, state) => const WindowSlopesScreen(),
    ),
    GoRoute(
      path: WhereToInsulateContainerScreen.routeName,
      builder: (context, state) => const WhereToInsulateContainerScreen(),
    ),
    GoRoute(
      path: WhereToInsulateWallScreen.routeName,
      builder: (context, state) => const WhereToInsulateWallScreen(),
    ),
    GoRoute(
      path: WhereToInsulateWindowsDoorsScreen.routeName,
      builder: (context, state) => const WhereToInsulateWindowsDoorsScreen(),
    ),
    GoRoute(
      path: WhereToInsulateCeilingScreen.routeName,
      builder: (context, state) => const WhereToInsulateCeilingScreen(),
    ),
    GoRoute(
      path: WhereToInsulateFundamentScreen.routeName,
      builder: (context, state) => const WhereToInsulateFundamentScreen(),
    ),
    GoRoute(
      path: WhereToInsulateFloorScreen.routeName,
      builder: (context, state) => const WhereToInsulateFloorScreen(),
    ),
    GoRoute(
      path: WhereToInsulateRoofScreen.routeName,
      builder: (context, state) => const WhereToInsulateRoofScreen(),
    ),
  ],
);

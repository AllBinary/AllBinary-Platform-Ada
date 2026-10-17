--  Generated Code Do Not Modify


package body org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package is

   procedure Initialize_Fields (This : in out TempExplosionWeaponLayer'Class) is
   begin
      null;
      This.weaponProperties := WeaponProperties_Package.Create (-(1), -(1), 0, 1000, Short_Integer (0));
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
   end Initialize_Fields;


   procedure Initialize (This : in out TempExplosionWeaponLayer'Class; name : Unbounded_String; movement_Param : access Movement'Class; animationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class; timeDelay : Integer) is
      movement : Movement_Access := Movement_Access (movement_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        SimpleWeaponLayer_Package.Initialize (This, name, RemoteInfo_Package.REMOTE_INFO, -(1), movement, animationInterface, SimpleWeaponLayer_Package.createDestroyed, rectangle, viewPosition);
        Initialize_Fields (This);
        This.timeDelayHelper.delay_Id := timeDelay;
   end Initialize;

   function Create (name : Unbounded_String; movement_Param : access Movement'Class; animationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class; timeDelay : Integer) return TempExplosionWeaponLayer_Access is
      This : constant TempExplosionWeaponLayer_Access := new TempExplosionWeaponLayer;
   begin
      TempExplosionWeaponLayer_Package.Initialize (This.all, name, movement_Param, animationInterface_Param, rectangle_Param, viewPosition_Param, timeDelay);
      return This;
   end Create;

   --  throws Exception
   procedure processTick (This : in out TempExplosionWeaponLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.getCollidableInferface.collide (TempExplosionWeaponLayer_Access'(This'Unchecked_Access), TempExplosionWeaponLayer_Access'(This'Unchecked_Access));
            This.totalDamage := (This.getInitDamage) + (1);
        end if;
        SimpleWeaponLayer (This).processTick (allBinaryLayerManager);
   end processTick;

end org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package;



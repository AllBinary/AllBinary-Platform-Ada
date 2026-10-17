--  Generated Code Do Not Modify


package body org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package is

   procedure Initialize_Fields (This : in out TempExplosionWeaponLayer'Class) is
   begin
      null;
      This.weaponProperties := WeaponProperties_Package.Create (-(1), -(1), 0, 1000, Short_Integer (0));
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
   end Initialize_Fields;


   procedure Initialize (This : in out TempExplosionWeaponLayer'Class; name : Unbounded_String; movement : Movement_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; timeDelay : Integer) is
   begin
        SimpleWeaponLayer_Package.Initialize (This, name, RemoteInfo_Package.REMOTE_INFO, -(1), movement, animationInterface, SimpleWeaponLayer_Package.createDestroyed, rectangle, viewPosition);
        Initialize_Fields (This);
        This.timeDelayHelper.delay_Id := timeDelay;
   end Initialize;

   function Create (name : Unbounded_String; movement : Movement_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; timeDelay : Integer) return TempExplosionWeaponLayer_Access is
      This : constant TempExplosionWeaponLayer_Access := new TempExplosionWeaponLayer;
   begin
      TempExplosionWeaponLayer_Package.Initialize (This.all, name, movement, animationInterface, rectangle, viewPosition, timeDelay);
      return This;
   end Create;

   --  throws Exception
   procedure processTick (This : in out TempExplosionWeaponLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.getCollidableInferface.collide (This'Unchecked_Access, This'Unchecked_Access);
            This.totalDamage := (This.getInitDamage) + (1);
        end if;
        SimpleWeaponLayer (This).processTick (allBinaryLayerManager);
   end processTick;

end org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package;



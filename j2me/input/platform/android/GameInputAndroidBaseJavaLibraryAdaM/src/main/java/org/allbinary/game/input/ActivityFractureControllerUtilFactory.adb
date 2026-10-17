--  Generated Code Do Not Modify


package body org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package is

   procedure Initialize_Fields (This : in out ActivityFractureControllerUtilFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureControllerUtilFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureControllerUtilFactory_Access is
      This : constant ActivityFractureControllerUtilFactory_Access := new ActivityFractureControllerUtilFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidKeyFactory_Access is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (8) then
            return AndroidAPI1KeyFactory_Package.getInstance;
        elsif (SDK_VERSION) <= (11) then
            return AndroidAPI9KeyFactory_Package.getInstance;
        else
            return AndroidAPI12KeyFactory_Package.getAPI12Instance;
        end if;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AndroidKeyFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;



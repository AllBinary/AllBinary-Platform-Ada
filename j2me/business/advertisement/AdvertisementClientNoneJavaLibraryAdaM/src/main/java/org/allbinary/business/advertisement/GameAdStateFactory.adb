--  Generated Code Do Not Modify


with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.GameAdState_Package_References;
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
with org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package; use org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package; use org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package_References;
with org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;

package body org.allbinary.business.advertisement.GameAdStateFactory_Package is

   subtype GameAdState_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access;
   function "=" (Left, Right : GameAdState_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array;
   function "=" (Left, Right : GameAdState_Access_Array) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access;
   function "=" (Left, Right : GameAdState_Access_Array_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   function "=" (Left, Right : SoftwareInformation_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype GameAdStateBase_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access;
   function "=" (Left, Right : GameAdStateBase_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array;
   function "=" (Left, Right : GameAdStateBase_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   procedure Initialize_Fields (This : in out GameAdStateFactory'Class) is
   begin
      null;
      This.gameAdStateArray := new GameAdState_Access_Array'(0 => GameAdState_Package.Create (AppNameLicensingAdConfiguration_Package.Create));
      This.gameAdState := This.gameAdStateArray (0);
   end Initialize_Fields;

   procedure Initialize (This : in out GameAdStateFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameAdStateFactory_Access is
      This : constant GameAdStateFactory_Access := new GameAdStateFactory;
   begin
      GameAdStateFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameAdStateFactory_Access is
   begin
        return GameAdStateFactory_Access (GameAdStateFactory_Package.instance);
   end getInstance;

   function getCurrentInstance (This : in out GameAdStateFactory) return GameAdState_Access is
   begin
        return This.gameAdState;
   end getCurrentInstance;

   --  throws Exception
   function getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return GameAdStateBase_Access is
      softwareInformation : constant SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
   begin
        This.gameAdState := This.gameAdStateArray (0);
        return GameAdStateBase_Access (This.gameAdStateArray (0));
   end getInstanceForApp;

   function isEnabled (This : in out GameAdStateFactory) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) is
      Java_Result : constant GameAdStateBase_Access := GameAdStateFactory'Class (This).getInstanceForApp (softwareInformation_Param => softwareInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForApp;

begin
   null;
   instance := GameAdStateFactory_Package.Create;

end org.allbinary.business.advertisement.GameAdStateFactory_Package;



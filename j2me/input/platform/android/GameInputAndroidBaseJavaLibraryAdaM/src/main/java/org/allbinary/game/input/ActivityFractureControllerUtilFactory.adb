--  Generated Code Do Not Modify


with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.game.input.AndroidAPI12KeyFactory_Package; use org.allbinary.game.input.AndroidAPI12KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI9KeyFactory_Package; use org.allbinary.game.input.AndroidAPI9KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI1KeyFactory_Package; use org.allbinary.game.input.AndroidAPI1KeyFactory_Package;
with org.allbinary.game.input.AndroidKeyFactory_Package; use org.allbinary.game.input.AndroidKeyFactory_Package;
with org.allbinary.game.input.AndroidKeyFactory_Package_References;
with org.allbinary.game.input.AndroidAPI12KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI1KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI9KeyFactory_Package;
with org.allbinary.game.input.AndroidGameKey_Package;
with org.allbinary.game.input.AndroidKeyFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   subtype AndroidKeyFactory_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access;
   function "=" (Left, Right : AndroidKeyFactory_Access) return Boolean renames org.allbinary.game.input.AndroidKeyFactory_Package_References."=";
   subtype AndroidKeyFactory_Access_Array is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array;
   function "=" (Left, Right : AndroidKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.AndroidKeyFactory_Package_References."=";
   subtype AndroidKeyFactory_Access_Array_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidKeyFactory_Package_References."=";
   subtype AndroidKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidKeyFactory_Package_References."=";
   subtype AndroidKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidKeyFactory_Package_References."=";
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
      ActivityFractureControllerUtilFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidKeyFactory_Access is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (8) then
            return AndroidKeyFactory_Access (AndroidAPI1KeyFactory_Package.getInstance);
        elsif (SDK_VERSION) <= (11) then
            return AndroidKeyFactory_Access (AndroidAPI9KeyFactory_Package.getInstance);
        else
            return AndroidKeyFactory_Access (AndroidAPI12KeyFactory_Package.getAPI12Instance);
        end if;
   end getInstance;

end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;



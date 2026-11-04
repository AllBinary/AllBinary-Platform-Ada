--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.input.J2MEKeyFactory_Package; use org.allbinary.game.input.J2MEKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package body org.allbinary.game.input.J2MEGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   function "=" (Left, Right : Input_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   function "=" (Left, Right : Input_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   function "=" (Left, Right : Input_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   procedure Initialize_Fields (This : in out J2MEGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out J2MEGameInputMapping'Class) is
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.SAVED_INPUT_CONFIGURATION_RECORD_ID);
   end Initialize;

   function Create return J2MEGameInputMapping_Access is
      This : constant J2MEGameInputMapping_Access := new J2MEGameInputMapping;
   begin
      J2MEGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out J2MEGameInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, J2MEGameInputMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        J2MEKeyFactory_Package.getInstance.init;
        PersistentInputMapping_Package.PersistentInputMapping (This).init (abeClientInformation);
        if ((J2MEGameInputMapping'Class (This).getTotalMapped) = (0)) or else (J2MEGameInputMapping'Class (This).isDefaultNew) then
            J2MEGameInputMapping'Class (This).getInputMapping.addMapping (J2MEGameInputMapping'Class (This).getDefault);
            J2MEGameInputMapping'Class (This).save (abeClientInformation);
        end if;
   end init;

   function isDelete (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (GameKeyFactory_Package.getInstance.GAME_D) then
            return True;
        else
            return False;
        end if;
   end isDelete;

   function isSystemInput (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return False;
   end isSystemInput;

   procedure isDelete (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEGameInputMapping'Class (This).isDelete (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isSystemInput (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEGameInputMapping'Class (This).isSystemInput (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSystemInput;

end org.allbinary.game.input.J2MEGameInputMapping_Package;



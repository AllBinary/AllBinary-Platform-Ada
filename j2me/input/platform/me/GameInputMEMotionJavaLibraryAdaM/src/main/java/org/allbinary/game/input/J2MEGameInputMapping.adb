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


package body org.allbinary.game.input.J2MEGameInputMapping_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out J2MEGameInputMapping; abeClientInformation : AbeClientInformationInterface_Access) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.INIT);
        J2MEKeyFactory_Package.getInstance.init;
        PersistentInputMapping (This).init (abeClientInformation);
        if ((This.getTotalMapped) = (0)) or else (This.isDefaultNew) then
            This.getInputMapping.addMapping (This.getDefault);
            This.save (abeClientInformation);
        end if;
   end init;

   function isDelete (This : in out J2MEGameInputMapping; input : Input_Access) return Boolean is
   begin
        if (input) = (GameKeyFactory_Package.getInstance.GAME_D) then
            return True;
        else
            return False;
        end if;
   end isDelete;

   function isSystemInput (This : in out J2MEGameInputMapping; input : Input_Access) return Boolean is
   begin
        return False;
   end isSystemInput;

   procedure isDelete (This : in out J2MEGameInputMapping; input : Input_Access) is
      Java_Result : constant Boolean := J2MEGameInputMapping'Class (This).isDelete (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isSystemInput (This : in out J2MEGameInputMapping; input : Input_Access) is
      Java_Result : constant Boolean := J2MEGameInputMapping'Class (This).isSystemInput (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSystemInput;

end org.allbinary.game.input.J2MEGameInputMapping_Package;



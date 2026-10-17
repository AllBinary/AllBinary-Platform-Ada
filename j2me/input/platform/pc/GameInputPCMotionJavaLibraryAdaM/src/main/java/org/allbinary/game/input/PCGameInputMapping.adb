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


package body org.allbinary.game.input.PCGameInputMapping_Package is

   procedure Initialize_Fields (This : in out PCGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PCGameInputMapping'Class) is
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.SAVED_INPUT_CONFIGURATION_RECORD_ID);
   end Initialize;

   function Create return PCGameInputMapping_Access is
      This : constant PCGameInputMapping_Access := new PCGameInputMapping;
   begin
      PCGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PCGameInputMapping; abeClientInformation_Param : access AbeClientInformationInterface'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, PCGameInputMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        PCKeyFactory_Package.getInstance;
        TouchMotionGestureFactory_Package.getInstance;
        TrackballMotionGestureFactory_Package.getInstance;
        BasicTouchInputFactory_Package.getInstance;
        PersistentInputMapping (This).init (abeClientInformation);
        if ((This.getTotalMapped) = (0)) or else (This.isDefaultNew) then
            This.getInputMapping.addMapping (This.getDefault);
            This.save (abeClientInformation);
        end if;
   end init;

   function isDelete (This : in out PCGameInputMapping; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if (input) = (PCKeyFactory_Package.getInstance.DEL) then
            return True;
        else
            return False;
        end if;
   end isDelete;

   function isSystemInput (This : in out PCGameInputMapping; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        return False;
   end isSystemInput;

   procedure isDelete (This : in out PCGameInputMapping; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCGameInputMapping'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isSystemInput (This : in out PCGameInputMapping; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCGameInputMapping'Class (This).isSystemInput (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSystemInput;

end org.allbinary.game.input.PCGameInputMapping_Package;



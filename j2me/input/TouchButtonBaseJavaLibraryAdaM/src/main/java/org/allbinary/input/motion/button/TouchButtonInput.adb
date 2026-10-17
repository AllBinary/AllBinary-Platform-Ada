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


package body org.allbinary.input.motion.button.TouchButtonInput_Package is

   procedure Initialize_Fields (This : in out TouchButtonInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.TOUCH_BUTTON_SOURCE_ID := This.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID;
      This.gameKeyEvent := GameKeyEvent_Package.NONE;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonInput'Class; id : Integer; name : Unbounded_String) is
      inputFactory : InputFactory_Access;
   begin
        Input_Package.Initialize (This, id, name);
        Initialize_Fields (This);
        inputFactory := InputFactory_Package.getInstance;
        inputFactory.add (This.getId, This'Unchecked_Access);
   end Initialize;

   function Create (id : Integer; name : Unbounded_String) return TouchButtonInput_Access is
      This : constant TouchButtonInput_Access := new TouchButtonInput;
   begin
      Initialize (This.all, id, name);
      return This;
   end Create;

   procedure update (This : in out TouchButtonInput; inputToGameKeyMapping : InputToGameKeyMapping_Access) is
      gameKey : GameKey_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            gameKey := inputToGameKeyMapping.getInstance (This.getId);
            This.gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This'Unchecked_Access, gameKey);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.UPDATE, e);
                end;
        end;
   end update;

   function getSourceId (This : in out TouchButtonInput) return Integer is
   begin
        return This.TOUCH_BUTTON_SOURCE_ID;
   end getSourceId;

   function getGameKeyEvent (This : in out TouchButtonInput) return GameKeyEvent_Access is
   begin
        return This.gameKeyEvent;
   end getGameKeyEvent;

   procedure getSourceId (This : in out TouchButtonInput) is
      Java_Result : constant Integer := TouchButtonInput'Class (This).getSourceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSourceId;

   procedure getGameKeyEvent (This : in out TouchButtonInput) is
      Java_Result : constant GameKeyEvent_Access := TouchButtonInput'Class (This).getGameKeyEvent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKeyEvent;

end org.allbinary.input.motion.button.TouchButtonInput_Package;



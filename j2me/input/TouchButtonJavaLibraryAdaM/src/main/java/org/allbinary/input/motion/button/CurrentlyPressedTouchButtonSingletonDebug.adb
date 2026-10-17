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


package body org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package is

   procedure Initialize_Fields (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class) is
   begin
      null;
      This.string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
      This.listString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.append := StringUtil_Package.getInstance.EMPTY_STRING;
      This.PRESSED_AND_FIRED := To_Unbounded_String ("pressed & fired");
      This.PRESSED_AND_NOT_FIRED := To_Unbounded_String ("pressed in button but not fired");
      This.ASSOCIATED_RELEASED_AND_FIRED := To_Unbounded_String ("assoc. rel & fired");
      This.RELEASED_AND_FIRED := To_Unbounded_String ("rel & fired 1");
      This.RELEASED_AND_FIRED_2 := To_Unbounded_String ("rel & fired 2");
      This.RELEASED_AND_NOT_FIRED := To_Unbounded_String ("rel & not fired");
   end Initialize_Fields;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class) is
   begin
      CurrentlyPressedTouchButtonSingleton_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CurrentlyPressedTouchButtonSingletonDebug_Access is
      This : constant CurrentlyPressedTouchButtonSingletonDebug_Access := new CurrentlyPressedTouchButtonSingletonDebug;
   begin
      CurrentlyPressedTouchButtonSingletonDebug_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CurrentlyPressedTouchButtonSingleton_Access is
   begin
        return CurrentlyPressedTouchButtonSingletonDebug_Package.instanceC;
   end getInstance;

   procedure appendTouchButtonInput (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String; touchButtonInput : TouchButtonInput_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (touchButtonInput.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (append);
        This.append := stringBuffer.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
   end appendTouchButtonInput;

   procedure append (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String) is
   begin
        This.append := StringMaker_Package.Create.append (This.append).append (append).toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
   end append;

   procedure clearLog (This : in out CurrentlyPressedTouchButtonSingletonDebug; x : Integer; y : Integer) is
   begin
        This.append := StringMaker_Package.Create.append (GPoint_Package.toStringStatic (x, y, 0)).append (CommonSeps_Package.getInstance.SPACE).toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
   end clearLog;

   procedure releaseAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug) is
   begin
        This.append (This.RELEASED_AND_NOT_FIRED);
   end releaseAndNotFired;

   procedure releaseAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        This.appendTouchButtonInput (This.RELEASED_AND_FIRED, touchButtonInput);
   end releaseAndFired;

   procedure releaseAndFired2 (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        This.appendTouchButtonInput (This.RELEASED_AND_FIRED_2, touchButtonInput);
   end releaseAndFired2;

   procedure releaseAndFiredAssociated (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        This.appendTouchButtonInput (This.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput);
   end releaseAndFiredAssociated;

   procedure pressedAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        This.appendTouchButtonInput (This.PRESSED_AND_FIRED, touchButtonInput);
   end pressedAndFired;

   procedure pressedAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        This.appendTouchButtonInput (This.PRESSED_AND_NOT_FIRED, touchButtonInput);
   end pressedAndNotFired;

   function removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) return TouchButtonInput_Access is
      touchButtonInput : TouchButtonInput_Access;
   begin
        touchButtonInput := CurrentlyPressedTouchButtonSingleton (This).removeAt (index);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
        return touchButtonInput;
   end removeAt;

   function remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) return Boolean is
      isRemoved : Boolean;
   begin
        isRemoved := CurrentlyPressedTouchButtonSingleton (This).remove (touchButtonInput);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
        return isRemoved;
   end remove;

   procedure add (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
   begin
        CurrentlyPressedTouchButtonSingleton (This).add (touchButtonInput);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.append).toString;
   end add;

   function toString (This : in out CurrentlyPressedTouchButtonSingletonDebug) return Unbounded_String is
   begin
        return This.string_Id;
   end toString;

   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) is
      Java_Result : constant TouchButtonInput_Access := CurrentlyPressedTouchButtonSingletonDebug'Class (This).removeAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeAt;

   procedure remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput : TouchButtonInput_Access) is
      Java_Result : constant Boolean := CurrentlyPressedTouchButtonSingletonDebug'Class (This).remove (touchButtonInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

begin
   null;
   instanceC := CurrentlyPressedTouchButtonSingletonDebug_Package.Create;

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package;



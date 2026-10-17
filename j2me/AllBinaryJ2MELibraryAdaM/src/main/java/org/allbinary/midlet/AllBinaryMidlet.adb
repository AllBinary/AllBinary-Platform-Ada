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


package body org.allbinary.midlet.AllBinaryMidlet_Package is

   procedure Initialize_Fields (This : in out AllBinaryMidlet'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.SET_DISPLAY := To_Unbounded_String ("setDisplay");
      This.SETTING_U := To_Unbounded_String ("Setting: ");
      This.U_DISPLAY_U := To_Unbounded_String (" Display: ");
      This.SETTING_NO_TITLE := To_Unbounded_String ("Setting: No Title, Display: ");
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.midletDestroyed := False;
   end Initialize_Fields;


   function getNullInstance return AllBinaryMidlet_Access is
   begin
        if (AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET := AllBinaryMidlet_Package.Create;
        end if;
        return AllBinaryMidlet_Access (AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET);
   end getNullInstance;

   procedure Initialize (This : in out AllBinaryMidlet'Class) is
   begin
      MIDlet_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, To_Unbounded_String ("AllBinaryMidlet::AllBinaryMidlet"));
   end Initialize;

   function Create return AllBinaryMidlet_Access is
      This : constant AllBinaryMidlet_Access := new AllBinaryMidlet;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setDisplay (This : in out AllBinaryMidlet; newDisplay : Displayable_Access) is
      title : Unbounded_String;
      display : Display_Access;
   begin
        title := StringUtil_Package.getInstance.EMPTY_STRING;
        if (newDisplay) /= (NullCanvas_Package.NULL_CANVAS) then
            title := newDisplay.getTitle;
            if (title) /= (Null_Unbounded_String) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.SETTING_U).append (title).append (This.U_DISPLAY_U).append (StringUtil_Package.getInstance.toString (newDisplay)).toString, This'Unchecked_Access, This.SET_DISPLAY);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.SETTING_NO_TITLE).append (StringUtil_Package.getInstance.toString (newDisplay)).toString, This'Unchecked_Access, This.SET_DISPLAY);
            end if;
        end if;
        display := This.getDisplay;
        display.setCurrent (newDisplay);
   end setDisplay;

   function getDisplay (This : in out AllBinaryMidlet) return Display_Access is
   begin
        return Display_Package.getDisplay (This'Unchecked_Access);
   end getDisplay;

   function getCurrentDisplayable (This : in out AllBinaryMidlet) return Displayable_Access is
   begin
        return Display_Package.getDisplay (This'Unchecked_Access).getCurrent;
   end getCurrentDisplayable;

   procedure setDestroyed (This : in out AllBinaryMidlet; destroyed : Boolean) is
   begin
        This.midletDestroyed := destroyed;
   end setDestroyed;

   function isDestroyed (This : in out AllBinaryMidlet) return Boolean is
   begin
        return This.midletDestroyed;
   end isDestroyed;

   --  throws MIDletStateChangeException
   procedure startApp (This : in out AllBinaryMidlet) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end startApp;

   procedure pauseApp (This : in out AllBinaryMidlet) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end pauseApp;

   procedure destroyAppInRunnable (This : in out AllBinaryMidlet; unconditional : Boolean; isProgress : Boolean) is
   begin
        null;
   end destroyAppInRunnable;

   procedure destroyApp (This : in out AllBinaryMidlet; unconditional : Boolean) is
      METHOD_NAME : Unbounded_String;
   begin
        METHOD_NAME := To_Unbounded_String ("AllBinaryMidlet::destroyApp");
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, METHOD_NAME);
            PreLogUtil_Package.put (Memory_Package.getInfo, This'Unchecked_Access, METHOD_NAME);
            This.setDestroyed (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, METHOD_NAME, e);
                end;
        end;
   end destroyApp;

   --  throws Exception
   procedure setStartStateHashtable (This : in out AllBinaryMidlet; hashtable : ABHashtable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (hashtable)).toString, This'Unchecked_Access, To_Unbounded_String ("setStartStateHashtable"));
        This.hashtable := hashtable;
   end setStartStateHashtable;

   --  throws Exception
   function getStartStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (This.hashtable)).toString, This'Unchecked_Access, To_Unbounded_String ("getStartStateHashtable"));
        return This.hashtable;
   end getStartStateHashtable;

   --  throws Exception
   function getCurrentStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getStateHashtable"));
        return StdUtil_Package.getInstance.NULL_TABLE;
   end getCurrentStateHashtable;

   procedure commandAction (This : in out AllBinaryMidlet; command : Command_Access; displayable : Displayable_Access) is
   begin
        null;
   end commandAction;

   procedure getNullInstance is
      Java_Result : constant AllBinaryMidlet_Access := getNullInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNullInstance;

   procedure getDisplay (This : in out AllBinaryMidlet) is
      Java_Result : constant Display_Access := AllBinaryMidlet'Class (This).getDisplay;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDisplay;

   procedure getCurrentDisplayable (This : in out AllBinaryMidlet) is
      Java_Result : constant Displayable_Access := AllBinaryMidlet'Class (This).getCurrentDisplayable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentDisplayable;

   procedure isDestroyed (This : in out AllBinaryMidlet) is
      Java_Result : constant Boolean := AllBinaryMidlet'Class (This).isDestroyed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDestroyed;

   procedure getStartStateHashtable (This : in out AllBinaryMidlet) is
      Java_Result : constant ABHashtable_Access := AllBinaryMidlet'Class (This).getStartStateHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStartStateHashtable;

   procedure getCurrentStateHashtable (This : in out AllBinaryMidlet) is
      Java_Result : constant ABHashtable_Access := AllBinaryMidlet'Class (This).getCurrentStateHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentStateHashtable;

begin
   null;
   NULL_ALLBINARY_MIDLET := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.midlet.AllBinaryMidlet_Package;



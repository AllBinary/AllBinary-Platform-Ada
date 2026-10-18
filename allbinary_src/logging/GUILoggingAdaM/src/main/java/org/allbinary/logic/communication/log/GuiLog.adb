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


with org.allbinary.logic.communication.log.JDialog_Package; use org.allbinary.logic.communication.log.JDialog_Package;
with org.allbinary.logic.communication.log.GridLayout_Package; use org.allbinary.logic.communication.log.GridLayout_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package body org.allbinary.logic.communication.log.GuiLog_Package is

   procedure Initialize_Fields (This : in out GuiLog'Class) is
   begin
      null;
      This.logFormatUtil := LogFormatUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return GuiLog_Access is
   begin
        return GuiLog_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GuiLog'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GuiLog_Access is
      This : constant GuiLog_Access := new GuiLog;
   begin
      GuiLog_Package.Initialize (This.all);
      return This;
   end Create;

   procedure showDialog (This : in out GuiLog; msg : Unbounded_String) is
      error : JDialog_Access;
      size : Integer;
      x : Integer;
      y : Integer;
   begin
        error := JDialog_Package.Create;
        size := (Length (msg)) * (9);
        x := size;
        if (x) > (550) then
            x := 550;
        end if;
        error.getContentPane.setLayout (GridLayout_Package.Create (1, 1));
        if (size) > (255) then
            y := 550;
            error.setSize (x, y);
            error.getContentPane.add (JScrollPane_Package.Create (JTextArea_Package.Create (msg)));
        elsif (size) > (0) then
            y := 50;
            error.setSize (x, y);
            error.getContentPane.add (JScrollPane_Package.Create (JLabel_Package.Create (msg)));
        end if;
        error.show;
   end showDialog;

   function put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Unbounded_String is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return GuiLog'Class (This).put (specialMessage, anyType, functionName, null);
   end put;

   function put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Throwable := Java_Throwable (exception_Id_Param);
      data : Unbounded_String;
   begin
        begin
            data := This.logFormatUtil.get (specialMessage, To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag)), functionName, exception_Id);
            GuiLog'Class (This).showDialog (data);
            Ada.Text_IO.Put_Line (Java_Image (data));
            return data;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, GuiLog_Access'(This'Unchecked_Access), To_Unbounded_String ("put"), e);
            return To_Unbounded_String ("Logging Error");
                end;
        end;
   end put;

   function put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) return Unbounded_String is
   begin
        return GuiLog'Class (This).put (specialMessage, className, functionName, null);
   end put;

   function put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String is
      exception_Id : constant Java_Throwable := Java_Throwable (exception_Id_Param);
      data : Unbounded_String;
   begin
        begin
            data := This.logFormatUtil.get (specialMessage, className, functionName, exception_Id);
            GuiLog'Class (This).showDialog (data);
            Ada.Text_IO.Put_Line (Java_Image (data));
            return data;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, GuiLog_Access'(This'Unchecked_Access), To_Unbounded_String ("put"), e);
            return To_Unbounded_String ("Logging Error");
                end;
        end;
   end put;

   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      Java_Result : constant Unbounded_String := GuiLog'Class (This).put (specialMessage, anyType_Param, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) is
      Java_Result : constant Unbounded_String := GuiLog'Class (This).put (specialMessage, anyType_Param, functionName, exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
      Java_Result : constant Unbounded_String := GuiLog'Class (This).put (specialMessage, className, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) is
      Java_Result : constant Unbounded_String := GuiLog'Class (This).put (specialMessage, className, functionName, exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

begin
   null;
   instance := GuiLog_Package.Create;

end org.allbinary.logic.communication.log.GuiLog_Package;



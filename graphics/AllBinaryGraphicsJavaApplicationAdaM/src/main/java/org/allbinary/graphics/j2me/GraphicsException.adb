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


package body org.allbinary.graphics.j2me.GraphicsException_Package is

   procedure Initialize_Fields (This : in out GraphicsException'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.guiLog := GuiLog_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GraphicsException'Class; msg : Unbounded_String; obj_Param : access Java_Object'Class; method : Unbounded_String) is
      obj : constant Java_Object_Access := Java_Object_Access (obj_Param);
   begin
        Exception_Package.Initialize (This, msg);
        Initialize_Fields (This);
        begin
            This.guiLog.showDialog (msg);
            This.logUtil.put (msg, obj, method, GraphicsException_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end Initialize;

   function Create (msg : Unbounded_String; obj_Param : access Java_Object'Class; method : Unbounded_String) return GraphicsException_Access is
      This : constant GraphicsException_Access := new GraphicsException;
   begin
      GraphicsException_Package.Initialize (This.all, msg, obj_Param, method);
      return This;
   end Create;

   procedure Initialize (This : in out GraphicsException'Class; msg : Unbounded_String; className : Unbounded_String; method : Unbounded_String) is
   begin
        Exception_Package.Initialize (This, msg);
        Initialize_Fields (This);
        begin
            This.guiLog.showDialog (msg);
            This.logUtil.put (msg, className, method, GraphicsException_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end Initialize;

   function Create (msg : Unbounded_String; className : Unbounded_String; method : Unbounded_String) return GraphicsException_Access is
      This : constant GraphicsException_Access := new GraphicsException;
   begin
      GraphicsException_Package.Initialize (This.all, msg, className, method);
      return This;
   end Create;

end org.allbinary.graphics.j2me.GraphicsException_Package;



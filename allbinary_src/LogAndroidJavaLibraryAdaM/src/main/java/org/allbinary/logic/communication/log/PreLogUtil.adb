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


package body org.allbinary.logic.communication.log.PreLogUtil_Package is

   procedure Initialize_Fields (This : in out PreLogUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PreLogUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PreLogUtil_Access is
      This : constant PreLogUtil_Access := new PreLogUtil;
   begin
      PreLogUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure put (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        PreLogUtil_Package.putOE (specialMessage, anyType, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end put;

   procedure putOE (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      actualClassName : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.LABEL;
        actualClassName := To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag));
        if (actualClassName) /= (Null_Unbounded_String) then
            className := actualClassName;
        end if;
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        android_Package.util.Log.i (PreLogUtil_Package.LABEL, message);
   end putOE;

   procedure putS (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
   begin
        PreLogUtil_Package.putSE (specialMessage, className, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end putS;

   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      message : Unbounded_String;
   begin
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        android_Package.util.Log.i (className, message);
   end putSE;

begin
   null;
   LABEL := To_Unbounded_String ("org.allbinary");

end org.allbinary.logic.communication.log.PreLogUtil_Package;



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
      Initialize (This.all);
      return This;
   end Create;

   procedure put (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) is
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        className := StringMaker_Package.Create.append (className).append (CommonSeps_Package.getInstance.FORWARD_SLASH).append (StringUtil_Package.getInstance.toString (anyType)).toString;
        message := LogFormatUtil_Package.getInstance.getS (className, functionName, specialMessage);
        PlayN_Package.getInstance.log.debug (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message);
   end put;

   procedure putOE (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        className := StringMaker_Package.Create.append (className).append (CommonSeps_Package.getInstance.FORWARD_SLASH).append (StringUtil_Package.getInstance.toString (anyType)).toString;
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        PlayN_Package.getInstance.log.error (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message, Ada.Exceptions.Exception_Occurrence (exception_Id));
   end putOE;

   procedure putS (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
      message : Unbounded_String;
   begin
        message := LogFormatUtil_Package.getInstance.getS (className, functionName, specialMessage);
        PlayN_Package.getInstance.log.debug (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message);
   end putS;

   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      message : Unbounded_String;
   begin
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        PlayN_Package.getInstance.log.error (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message, Ada.Exceptions.Exception_Occurrence (exception_Id));
   end putSE;


   procedure getClassName (anyType : Java_Object_Access) is
      Java_Result : constant Unbounded_String := getClassName (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClassName;

begin
   null;
   LOG_SUCCESS := To_Unbounded_String ("org.allbinary: ");

end org.allbinary.logic.communication.log.PreLogUtil_Package;



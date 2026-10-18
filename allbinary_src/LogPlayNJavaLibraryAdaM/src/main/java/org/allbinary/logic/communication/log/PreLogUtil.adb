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


with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package; use org.allbinary.logic.communication.log.LogFormatUtil_Package;

package body org.allbinary.logic.communication.log.PreLogUtil_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;
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
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        className := StringMaker_Package.Create.append (className).append (CommonSeps_Package.getInstance.FORWARD_SLASH).append (StringUtil_Package.getInstance.toString (anyType)).toString;
        message := LogFormatUtil_Package.getInstance.getS (className, functionName, specialMessage);
        PlayN_Package.log.debug (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message);
   end put;

   procedure putOE (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        className := StringMaker_Package.Create.append (className).append (CommonSeps_Package.getInstance.FORWARD_SLASH).append (StringUtil_Package.getInstance.toString (anyType)).toString;
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        PlayN_Package.log.error (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message, Java_Throwable (exception_Id));
   end putOE;

   procedure putS (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
      message : Unbounded_String;
   begin
        message := LogFormatUtil_Package.getInstance.getS (className, functionName, specialMessage);
        PlayN_Package.log.debug (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message);
   end putS;

   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      message : Unbounded_String;
   begin
        message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
        PlayN_Package.log.error (Java_Image (PreLogUtil_Package.LOG_SUCCESS) & message, Java_Throwable (exception_Id));
   end putSE;


   procedure getClassName (anyType_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := getClassName (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClassName;

   function getClassName (Value : Unbounded_String) return Unbounded_String is
   begin
      return getClassName (Java_Box (Value));
   end getClassName;

   procedure getClassName (Value : Unbounded_String) is
      Java_Result : constant Unbounded_String := getClassName (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClassName;

begin
   null;
   LOG_SUCCESS := To_Unbounded_String ("org.allbinary: ");

end org.allbinary.logic.communication.log.PreLogUtil_Package;



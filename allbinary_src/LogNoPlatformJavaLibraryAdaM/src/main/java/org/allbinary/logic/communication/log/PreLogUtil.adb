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
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        PreLogUtil_Package.putOE (specialMessage, anyType, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end put;

   procedure putOE (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end putOE;

   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      exception_Id : Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end putSE;

end org.allbinary.logic.communication.log.PreLogUtil_Package;



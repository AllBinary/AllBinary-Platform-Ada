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


package body org.allbinary.logic.util.event.AllBinaryEventObject_Package is

   procedure Initialize_Fields (This : in out AllBinaryEventObject'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryEventObject'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.source := anyType;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return AllBinaryEventObject_Access is
      This : constant AllBinaryEventObject_Access := new AllBinaryEventObject;
   begin
      AllBinaryEventObject_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   function getSource (This : in out AllBinaryEventObject) return Java_Object_Access is
   begin
        return This.source;
   end getSource;

   procedure setSource (This : in out AllBinaryEventObject; source_Param : access Java_Object'Class) is
      source : constant Java_Object_Access := Java_Object_Access (source_Param);
   begin
        This.source := source;
   end setSource;

begin
   null;
   NULL_EVENT := AllBinaryEventObject_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);

end org.allbinary.logic.util.event.AllBinaryEventObject_Package;



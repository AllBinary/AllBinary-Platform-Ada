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


package body org.allbinary.logic.control.validate.ValidatorBase_Package is

   procedure Initialize_Fields (This : in out ValidatorBase'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ValidatorBase_Access is
   begin
        return ValidatorBase_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ValidatorBase'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ValidatorBase_Access is
      This : constant ValidatorBase_Access := new ValidatorBase;
   begin
      ValidatorBase_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out ValidatorBase) return Boolean is
   begin
        return BooleanFactory_Package.getInstance.TRUE;
   end isValid;

   function validationInfo (This : in out ValidatorBase) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end validationInfo;

   function toHashtable (This : in out ValidatorBase) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end toHashtable;

   function toList (This : in out ValidatorBase) return BasicArrayList_Access is
   begin
        return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end toList;

begin
   null;
   instance := ValidatorBase_Package.Create;

end org.allbinary.logic.control.validate.ValidatorBase_Package;



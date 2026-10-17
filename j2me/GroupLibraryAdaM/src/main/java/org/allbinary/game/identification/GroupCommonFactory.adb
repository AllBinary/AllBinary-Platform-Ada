-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.identification.GroupCommonFactory_Package is

   procedure Initialize_Fields (This : in out GroupCommonFactory'Class) is
   begin
      null;
      This.ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (10);
      This.GROUP_NAME_LABEL := To_Unbounded_String ("Group Name: ");
      This.ID_LABEL := To_Unbounded_String (" Id: ");
      This.ADDING_LABEL := To_Unbounded_String ("Adding: ");
      This.TO_LABEL := To_Unbounded_String (" to: ");
   end Initialize_Fields;

   procedure Initialize (This : in out GroupCommonFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GroupCommonFactory_Access is
      This : constant GroupCommonFactory_Access := new GroupCommonFactory;
   begin
      GroupCommonFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GroupCommonFactory_Access is
   begin
        if (GroupCommonFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GroupCommonFactory_Package.instance := GroupCommonFactory_Package.Create;
        end if;
        return GroupCommonFactory_Access (GroupCommonFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.identification.GroupCommonFactory_Package;



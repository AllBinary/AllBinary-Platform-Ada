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


package body org.allbinary.game.identification.BasicGroupFactory_Package is

   procedure Initialize_Fields (This : in out BasicGroupFactory'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("GROUP_NAME");
      This.NO_SUCH_GROUP := To_Unbounded_String ("No Such Group: ");
      This.GOOD := Group_Package.Create (To_Unbounded_String ("Good Guys"), Short_Integer (0));
      This.ENEMY := Group_Package.Create (To_Unbounded_String ("Bad Guys"), Short_Integer (1));
      This.ENEMY_ON_LEVEL := Group_Package.Create (To_Unbounded_String ("Bad Guys on Level"), Short_Integer (2));
      This.NONE := Group_Package.Create (To_Unbounded_String ("Not On A Team"), Short_Integer (3));
      This.GOOD_ARRAY := new Group_Access_Array'(0 => This.GOOD);
      This.ENEMY_ARRAY := new Group_Access_Array'(0 => This.ENEMY);
      This.ENEMY_ON_LEVEL_ARRAY := new Group_Access_Array'(This.ENEMY, This.ENEMY_ON_LEVEL);
      This.NONE_ARRAY := new Group_Access_Array'(0 => This.NONE);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicGroupFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicGroupFactory_Access is
      This : constant BasicGroupFactory_Access := new BasicGroupFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicGroupFactory_Access is
   begin
        if (BasicGroupFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            BasicGroupFactory_Package.instance := BasicGroupFactory_Package.Create;
        end if;
        return BasicGroupFactory_Access (BasicGroupFactory_Package.instance);
   end getInstance;

   procedure getInstance is
      Java_Result : constant BasicGroupFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.identification.BasicGroupFactory_Package;



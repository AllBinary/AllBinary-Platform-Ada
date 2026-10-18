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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;

package body org.allbinary.game.identification.Group_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out Group'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      
      This.string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out Group'Class; teamName : Unbounded_String; teamId : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.teamId := teamId;
        Group'Class (This).setName (teamName);
   end Initialize;

   function Create (teamName : Unbounded_String; teamId : Short_Integer) return Group_Access is
      This : constant Group_Access := new Group;
   begin
      Group_Package.Initialize (This.all, teamName, teamId);
      return This;
   end Create;

   function getGroupName (This : in out Group) return Unbounded_String is
   begin
        return This.name;
   end getGroupName;

   procedure setName (This : in out Group; name : Unbounded_String) is
      groupCommonFactory : GroupCommonFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        This.name := name;
        groupCommonFactory := GroupCommonFactory_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (groupCommonFactory.GROUP_NAME_LABEL);
        stringBuffer.append (This.name);
        stringBuffer.append (groupCommonFactory.ID_LABEL);
        stringBuffer.appendshort (This.teamId);
        This.string_Id := stringBuffer.toString;
   end setName;

   function getGroupId (This : in out Group) return Short_Integer is
   begin
        return This.teamId;
   end getGroupId;

   function toString (This : in out Group) return Unbounded_String is
   begin
        return This.string_Id;
   end toString;

end org.allbinary.game.identification.Group_Package;



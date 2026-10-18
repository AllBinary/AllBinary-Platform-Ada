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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.direction.DirectionFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out DirectionFactory'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("DIRECTION");
      This.LEFT := Direction_Package.Create (CommonPhoneStrings_Package.getInstance.LEFT, To_Unbounded_String ("WEST"), 0, 1);
      This.RIGHT := Direction_Package.Create (CommonPhoneStrings_Package.getInstance.RIGHT, To_Unbounded_String ("EAST"), 1, 0);
      This.DOWN := Direction_Package.Create (CommonPhoneStrings_Package.getInstance.DOWN, To_Unbounded_String ("SOUTH"), 2, 0);
      This.UP := Direction_Package.Create (CommonPhoneStrings_Package.getInstance.UP, To_Unbounded_String ("NORTH"), 3, 0);
      
      
      
      
      This.NOT_BORDERED_WITH := Direction_Package.Create (To_Unbounded_String ("NOT_BORDERED_WITH"), To_Unbounded_String ("NOT_BORDERED_WITH"), 8, 0);
      This.NO_DIRECTION := Direction_Package.Create (To_Unbounded_String ("NO_DIRECTION"), To_Unbounded_String ("NO_DIRECTION"), 9, 0);
      This.TOP := Direction_Package.Create (To_Unbounded_String ("TOP"), To_Unbounded_String ("TOP"), 10, 0);
      This.BOTTOM := Direction_Package.Create (To_Unbounded_String ("BOTTOM"), To_Unbounded_String ("BOTTOM"), 11, 0);
      This.ALL_DIRECTION := Direction_Package.Create (To_Unbounded_String ("ALL_DIRECTION"), To_Unbounded_String ("ALL_DIRECTION"), 12, 0);
   end Initialize_Fields;


   function getInstance return DirectionFactory_Access is
   begin
        return DirectionFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DirectionFactory'Class) is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        This.UP_LEFT := Direction_Package.Create (To_Unbounded_String ("UP LEFT"), stringBuffer.append (This.UP.getOtherName).append (commonSeps.SPACE).append (This.LEFT.getOtherName).toString, 4, 0);
        stringBuffer.delete (0, stringBuffer.length);
        This.UP_RIGHT := Direction_Package.Create (To_Unbounded_String ("UP RIGHT"), stringBuffer.append (This.UP.getOtherName).append (commonSeps.SPACE).append (This.RIGHT.getOtherName).toString, 5, 0);
        stringBuffer.delete (0, stringBuffer.length);
        This.DOWN_LEFT := Direction_Package.Create (To_Unbounded_String ("DOWN LEFT"), stringBuffer.append (This.DOWN.getOtherName).append (commonSeps.SPACE).append (This.LEFT.getOtherName).toString, 6, 0);
        stringBuffer.delete (0, stringBuffer.length);
        This.DOWN_RIGHT := Direction_Package.Create (To_Unbounded_String ("DOWN RIGHT"), stringBuffer.append (This.DOWN.getOtherName).append (commonSeps.SPACE).append (This.RIGHT.getOtherName).toString, 7, 0);
   end Initialize;

   function Create return DirectionFactory_Access is
      This : constant DirectionFactory_Access := new DirectionFactory;
   begin
      DirectionFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := DirectionFactory_Package.Create;

end org.allbinary.direction.DirectionFactory_Package;



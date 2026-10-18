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


with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package; use org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;

package body org.allbinary.game.layer.resources.BasicGameResources_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out BasicGameResources'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.RESOURCE := StringUtil_Package.getInstance.EMPTY_STRING;
      This.RESOURCE_DESTROY := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGameResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGameResources_Access is
      This : constant BasicGameResources_Access := new BasicGameResources;
   begin
      BasicGameResources_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BasicGameResources; ROOT : Unbounded_String; SIZE : Unbounded_String_Array_Access) is
      scale : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            scale := GameConfigurationCentral_Package.getInstance.SCALE.getValue.intValue;
            if ((scale) > (1)) and then (((scale) - (1)) < (SIZE'Length)) then
                BasicGameResources'Class (This).append (ROOT, SIZE ((scale) - (1)));
            else
                Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Invalid Value: ")).appendint (scale).toString));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, BasicGameResources_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

   --  throws Exception
   procedure append (This : in out BasicGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String) is
      DESTROY : Unbounded_String;
      string_Id : Unbounded_String;
   begin
        DESTROY := To_Unbounded_String ("_destroy");
        string_Id := BasicGameResources'Class (This).getString;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        BasicGameResources_Package.stringBuffer.append (string_Id);
        BasicGameResources_Package.stringBuffer.append (sizeString);
        This.RESOURCE := BasicGameResources_Package.stringBuffer.toString;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        BasicGameResources_Package.stringBuffer.append (DESTROY);
        BasicGameResources_Package.stringBuffer.append (string_Id);
        BasicGameResources_Package.stringBuffer.append (sizeString);
        This.RESOURCE_DESTROY := BasicGameResources_Package.stringBuffer.toString;
   end append;

   --  throws Exception
   function getString (This : in out BasicGameResources) return Unbounded_String is
   begin
        return GameGraphicsResourceUtil_Package.getInstance.getName;
   end getString;

begin
   null;
   stringBuffer := StringMaker_Package.Create;

end org.allbinary.game.layer.resources.BasicGameResources_Package;



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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package; use org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.generator.UniqueIdGenerator_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package IdGeneratorEntityFactory_Package renames Standard.org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out UniqueIdGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UniqueIdGenerator'Class) is
   begin
      Initialize_Fields (This);
        This.idGeneratorEntity := IdGeneratorEntity_Access (IdGeneratorEntityFactory_Package.getInstance);
   end Initialize;

   function Create return UniqueIdGenerator_Access is
      This : constant UniqueIdGenerator_Access := new UniqueIdGenerator;
   begin
      UniqueIdGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initialize (This : in out UniqueIdGenerator; value : Integer) is
      vector : BasicArrayList_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            vector.add (This.name);
            vector.add (To_Unbounded_String (Java_Image (value)).toString);
            This.idGeneratorEntity.insert (vector);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, UniqueIdGenerator_Access'(This'Unchecked_Access), To_Unbounded_String ("initialize"), e);
            end if;
                end;
        end;
   end initialize;

   --  throws Exception
   procedure setFile (This : in out UniqueIdGenerator; filePathName : Unbounded_String; name : Unbounded_String) is
   begin
        This.name := name;
   end setFile;

   --  throws IOException
   function getNext (This : in out UniqueIdGenerator) return Unbounded_String is
      idLong : Long_Long_Integer;
      newValue : Long_Long_Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            idLong := This.idGeneratorEntity.get (This.name);
            newValue := To_Unbounded_String (Java_Image ((Long_Long_Integer (idLong)) + (1)));
            This.idGeneratorEntity.update (This.name, newValue);
            return To_Unbounded_String (Java_Image (idLong));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, UniqueIdGenerator_Access'(This'Unchecked_Access), To_Unbounded_String ("getNext"), e);
            end if;
            return To_Unbounded_String ("Error");
                end;
        end;
   end getNext;

begin
   null;
   EXT := To_Unbounded_String (".unq");

end org.allbinary.data.generator.UniqueIdGenerator_Package;



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


package body org.allbinary.logic.control.search.SearchData_Package is

   procedure Initialize_Fields (This : in out SearchData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SearchData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SearchData_Access is
      This : constant SearchData_Access := new SearchData;
   begin
      SearchData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   TOTAL_NUMBER_PAGES := To_Unbounded_String ("SEARCHDATA_TOTALNUMBEROFPAGES");
   TOTAL_NUMBER_ITEMS_ON_THIS_PAGE := To_Unbounded_String ("SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE");
   TOTAL_NUMBER_ITEMS := To_Unbounded_String ("SEARCHDATA_TOTALNUMBEROFITEMS");
   DEFAULT_PAGE_LENGTH := 10;
   GENERATESTATICPAGES := To_Unbounded_String ("Generate Static Pages");
   SEARCHBYSUMMARY := To_Unbounded_String ("Search By Summary");
   SEARCHBYDESCRIPTION := To_Unbounded_String ("Search By Description");
   SEARCHBYCATEGORY := To_Unbounded_String ("Search By Category");
   SEARCHCATEGORIES := To_Unbounded_String ("Search Categories");
   FILENAME := To_Unbounded_String ("SEARCHDATA_BASEFILENAME");
   COLUMNNAME := To_Unbounded_String ("COLUMN_NAME");
   COLUMNVALUE := To_Unbounded_String ("COLUMN_VALUE");
   PARAMS := To_Unbounded_String ("SEARCHDATA_PARAMS");
   LENGTH := To_Unbounded_String ("SEARCHDATA_LENGTH");
   ORDER := To_Unbounded_String ("SEARCHDATA_ORDER");
   PAGE := To_Unbounded_String ("SEARCHDATA_PAGE");
   FIELDS := To_Unbounded_String ("SEARCHDATA_FIELDS");
   FIELD := To_Unbounded_String ("SEARCHDATA_FIELD");
   SORTBY := To_Unbounded_String ("SEARCHDATA_SORTBY");
   TYPE_Id := To_Unbounded_String ("SEARCHDATA_TYPE");
   PAGE_INFO := To_Unbounded_String ("pageInfo");
   SEARCH := To_Unbounded_String ("search");
   MAKEPUBLIC := To_Unbounded_String ("Make Public");

end org.allbinary.logic.control.search.SearchData_Package;



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


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.ToDomHelper_Package; use org.allbinary.data.tree.dom.ToDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package body org.allbinary.logic.control.search.SearchParams_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package ToDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ToDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out SearchParams'Class) is
   begin
      null;
      
      This.order := Null_Unbounded_String;
      This.sortBy := Null_Unbounded_String;
      This.listLength := Null_Unbounded_String;
      This.startPage := Null_Unbounded_String;
      This.endPage := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out SearchParams'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      page : Unbounded_String;
      index : Integer;
      columnName : Unbounded_String;
      columnValue : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.columnsAndSearchValues := StdUtil_Package.getInstance.createHashMap;
        SearchParams'Class (This).setLength (request.getParameter (SearchData_Package.LENGTH));
        SearchParams'Class (This).setOrder (request.getParameter (SearchData_Package.ORDER));
        page := request.getParameter (SearchData_Package.PAGE);
        SearchParams'Class (This).setStartPage (page);
        SearchParams'Class (This).setEndPage (page);
        SearchParams'Class (This).setSortBy (request.getParameter (SearchData_Package.SORTBY));
        index := 0;
        columnName := request.getParameter (Java_Image (SearchData_Package.COLUMNNAME) & To_Unbounded_String ("[0]"));
        columnValue := request.getParameter (Java_Image (SearchData_Package.COLUMNVALUE) & To_Unbounded_String ("[0]"));
        while (columnName) /= (Null_Unbounded_String) loop
            SearchParams'Class (This).add (columnName, columnValue);
            index := index + 1;
            columnName := request.getParameter (Java_Image (SearchData_Package.COLUMNNAME) & To_Unbounded_String ("[") & Java_Image (index) & To_Unbounded_String ("]"));
            columnValue := request.getParameter (Java_Image (SearchData_Package.COLUMNVALUE) & To_Unbounded_String ("[") & Java_Image (index) & To_Unbounded_String ("]"));
        end loop;
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return SearchParams_Access is
      This : constant SearchParams_Access := new SearchParams;
   begin
      SearchParams_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure add (This : in out SearchParams; column : Unbounded_String; value : Unbounded_String) is
   begin
        This.columnsAndSearchValues.put (Java_Box (column), Java_Box (value));
   end add;

   procedure setOrder (This : in out SearchParams; value : Unbounded_String) is
   begin
        This.order := value;
   end setOrder;

   procedure setSortBy (This : in out SearchParams; value : Unbounded_String) is
   begin
        This.sortBy := value;
   end setSortBy;

   procedure setLength (This : in out SearchParams; value : Unbounded_String) is
   begin
        This.listLength := value;
   end setLength;

   procedure setStartPage (This : in out SearchParams; value : Unbounded_String) is
   begin
        This.startPage := value;
   end setStartPage;

   procedure setEndPage (This : in out SearchParams; value : Unbounded_String) is
   begin
        This.endPage := value;
   end setEndPage;

   function get (This : in out SearchParams) return HashMap_Access is
   begin
        return This.columnsAndSearchValues;
   end get;

   function getOrder (This : in out SearchParams) return Unbounded_String is
   begin
        return This.order;
   end getOrder;

   function getSortBy (This : in out SearchParams) return Unbounded_String is
   begin
        return This.sortBy;
   end getSortBy;

   function getLength (This : in out SearchParams) return Unbounded_String is
   begin
        return This.listLength;
   end getLength;

   function getLengthInt (This : in out SearchParams) return Integer is
   begin
        if (This.listLength) /= (Null_Unbounded_String) then
            return This.listLength;
        else
            return 0;
        end if;
   end getLengthInt;

   function getStartPage (This : in out SearchParams) return Unbounded_String is
   begin
        return This.startPage;
   end getStartPage;

   function getEndPage (This : in out SearchParams) return Unbounded_String is
   begin
        return This.endPage;
   end getEndPage;

   function getStartPageInt (This : in out SearchParams) return Integer is
   begin
        if (This.startPage) /= (Null_Unbounded_String) then
            return This.startPage;
        else
            return 0;
        end if;
   end getStartPageInt;

   function getEndPageInt (This : in out SearchParams) return Integer is
   begin
        if (This.endPage) /= (Null_Unbounded_String) then
            return This.endPage;
        else
            return 0;
        end if;
   end getEndPageInt;

   --  throws Exception
   function getParamsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      paramsNode : Node_Access;
   begin
        paramsNode := ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.PARAMS, SearchData_Package.PARAMS);
        paramsNode.appendChild (SearchParams'Class (This).getFieldsNode (document));
        paramsNode.appendChild (SearchParams'Class (This).getOrderNode (document));
        paramsNode.appendChild (SearchParams'Class (This).getSortByNode (document));
        paramsNode.appendChild (SearchParams'Class (This).getLengthNode (document));
        return paramsNode;
   end getParamsNode;

   --  throws Exception
   function getFieldsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      fieldsNode : Node_Access;
      set : Set_Access;
      searchValueArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      searchValue : Unbounded_String;
      index : Integer;
   begin
        fieldsNode := ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.FIELDS, This.columnsAndSearchValues.size.toString);
        set := This.columnsAndSearchValues.keySet;
        searchValueArray := set.toArray;
        size := searchValueArray'Length;
        for index in 0 .. (size) - 1 loop
            key := Java_Unbox (searchValueArray (index));
            searchValue := Java_Unbox (This.columnsAndSearchValues.get (Java_Box (key)));
            fieldsNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.FIELD, key, ToDomHelper_Package.convertNull (searchValue)));
        end loop;
        return fieldsNode;
   end getFieldsNode;

   --  throws Exception
   function getOrderNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.ORDER, ToDomHelper_Package.convertNull (SearchParams'Class (This).getOrder));
   end getOrderNode;

   --  throws Exception
   function getSortByNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.SORTBY, ToDomHelper_Package.convertNull (SearchParams'Class (This).getSortBy));
   end getSortByNode;

   --  throws Exception
   function getLengthNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.LENGTH, ToDomHelper_Package.convertNull (SearchParams'Class (This).getLength));
   end getLengthNode;

   procedure getParamsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchParams'Class (This).getParamsNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getParamsNode;

   procedure getFieldsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchParams'Class (This).getFieldsNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFieldsNode;

   procedure getOrderNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchParams'Class (This).getOrderNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrderNode;

   procedure getSortByNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchParams'Class (This).getSortByNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSortByNode;

   procedure getLengthNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchParams'Class (This).getLengthNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLengthNode;

end org.allbinary.logic.control.search.SearchParams_Package;



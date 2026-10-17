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


package body views.generic_Id.basket.mini.MiniBasketView_Package is

   procedure Initialize_Fields (This : in out MiniBasketView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MiniBasketView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return MiniBasketView_Access is
      This : constant MiniBasketView_Access := new MiniBasketView;
   begin
      MiniBasketView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out MiniBasketView; document : Document_Access) return Node_Access is
      basketInterface : BasketInterface_Access;
      basketNode : Node_Access;
      totalNumberNode : Node_Access;
      totalNumberTextNode : Node_Access;
      totalWeightNode : Node_Access;
      totalWeightTextNode : Node_Access;
      subTotalNode : Node_Access;
      subTotalTextNode : Node_Access;
   begin
        begin
            basketInterface := This.getWeblisketSession.getOrder.getBasket;
            basketNode := document.createElement (BasketData_Package.BASKET);
            totalNumberNode := document.createElement (SearchData_Package.TOTAL_NUMBER_ITEMS);
            totalNumberTextNode := document.createTextNode (basketInterface.getNumberOfItems.toString);
            totalNumberNode.appendChild (totalNumberTextNode);
            totalWeightNode := document.createElement (BasketData_Package.TOTALWEIGHT);
            totalWeightTextNode := document.createTextNode (basketInterface.getTotalWeight.toString);
            totalWeightNode.appendChild (totalWeightTextNode);
            subTotalNode := document.createElement (BasketData_Package.SUBTOTAL);
            subTotalTextNode := document.createTextNode (basketInterface.getSubTotal.toString);
            subTotalNode.appendChild (subTotalTextNode);
            basketNode.appendChild (totalNumberNode);
            basketNode.appendChild (totalWeightNode);
            basketNode.appendChild (subTotalNode);
            return basketNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out MiniBasketView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out MiniBasketView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out MiniBasketView; document : Document_Access) is
      Java_Result : constant Node_Access := MiniBasketView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.basket.mini.MiniBasketView_Package;



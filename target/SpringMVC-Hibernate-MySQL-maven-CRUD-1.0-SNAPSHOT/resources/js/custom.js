/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    
    $("#mobileLineId").hide();
    $("#serviceTypeId").hide();
    $("#internetServiceId").hide();

    $("select[name='mobileLineId']").prop('required',false);
    $("select[name='serviceTypeId']").prop('required',false);
    $("select[name='internetServiceId']").prop('required',false); 
    
    $("#isp").hide();
    $("#networkId").hide();
    $("#paymentMethod").hide();
    $("#mobileLineType").hide();
    $("#internetServiceId").hide();
    
    
    $("#type").change(function(){
        if($(this).val() == "Internet service"){
            
            $("input[name='isp']").prop('required',true);
            $("#isp").show();
        }
        else{
            $("input[name='isp']").prop('required',false);
            $("#isp").hide();
        }
    });
    
    $("#lineType").change(function(){
        if($(this).val() == "Fixe"){
            
            $("input[name='location']").prop('required',true);
            $("#location").show();
            
            $("select[name='paymentMethod']").prop('required',false);
            $("select[name='mobileLineType']").prop('required',false);
            $("select[name='networkId']").prop('required',false);
            $("#paymentMethod").hide();
            $("#mobileLineType").hide();   
            $("#networkId").hide();   
            
        }
        else{
            $("select[name='paymentMethod']").prop('required',true);
            $("select[name='mobileLineType']").prop('required',true);
            $("select[name='internetServiceId']").prop('required',true);
            $("select[name='networkId']").prop('required',true);
            
            $("#paymentMethod").show();
            $("#mobileLineType").show(); 
            $("#internetServiceId").show();
            $("#networkId").show();  
            
            $("input[name='location']").prop('required',false);
            $("#location").hide();
        }
    });
    
    
      $("#communicationLineType").change(function(){
        if($(this).val() == "Fixe"){
            
            $("#fixedLineId").show();
            $("#mobileLineId").hide();
            $("#serviceTypeId").hide();
            $("#vocalServiceId").show();
            $("#internetServiceId").hide();
         
            $("select[name='mobileLineId']").prop('required',false);
            $("select[name='serviceTypeId']").prop('required',false);
            $("select[name='vocalServiceId']").prop('required',true);
            $("select[name='internetServiceId']").prop('required',false); 
            $("select[name='fixedLineId']").prop('required',true); 
            
        }
        else{
            
            $("#fixedLineId").hide();
            $("#mobileLineId").show();
            $("#serviceTypeId").show();
            $("#vocalServiceId").show();
            $("#internetServiceId").hide();
         
            $("select[name='mobileLineId']").prop('required',true);
            $("select[name='serviceTypeId']").prop('required',true);
            $("select[name='vocalServiceId']").prop('required',true);
            $("select[name='internetServiceId']").prop('required',false);
            $("select[name='fixedLineId']").prop('required',false); 

        }
    });
    
    $("#serviceType").change(function(){
        if($(this).val() == "vocal"){
            
            $("select[name='vocalServiceId']").prop('required',true);
            $("#vocalServiceId").show();
            
            $("select[name='internetServiceId']").prop('required',false);
            $("#internetServiceId").hide();
        }
        else{
            $("select[name='vocalServiceId']").prop('required',false);
            $("#vocalServiceId").hide();
            
            $("select[name='internetServiceId']").prop('required',true);
            $("#internetServiceId").show();
        }
    });
});


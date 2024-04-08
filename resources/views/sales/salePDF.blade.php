

<?php 
use \App\Http\Controllers\CommonController;
use Illuminate\Http\Request;
?>
<style>
body{
    border: 1px solid black;
}
 table {

  border-spacing: -1px;
  font-size: 14px;
  border: 0.5px solid black;

  
}

td{
    border-spacing: -1px;
  font-size: 16px;
  border: 0.5px solid black;

    padding-left: 6px;
}
th{
	padding-left: 26px;
	padding-bottom: 6px;
	padding-top: 6px;
	padding-right:  6px;
	text-align: left; 
    font-size: 16px;
}
#background{
    position:absolute;
    z-index:0;
    background:white;
    display:block;
    min-height:50%; 
    min-width:50%;
    color:yellow;
}

#content{
    position:absolute;
    z-index:1;
}

#bg-text
{
    color:lightgrey;
    font-size:120px;
    transform:rotate(300deg);
    -webkit-transform:rotate(300deg);
}
</style>

            <table  style="width: 100%">

                <thead>
                <tr>
                    <th colspan="9" style="text-align:center;font-size:30px;">{{ $company->name }}</th>
                    
                </tr>

                <tr>
                 
                   <th colspan="9" style="text-align:center;"> Email. : {{ $company->email }}</th>
                </tr>

                <tr>
                    <th colspan="9" style="text-align:center;"> Mob. : {{ $company->mobile }} {{ $company->mobile2 }} </th>
                </tr>
                
                
                <tr>
                    <th colspan="9" style="text-align:center;border-bottom: 0.5px solid black;" > Address :{{ $company->address }}</th>
                    
                </tr>

                <tr>
                    <th colspan="4" style="text-align:center;"> Supplier Name : {{ $sales->party->name }}</th>
                    <th colspan="5" style="text-align:center;"> Bill Date : {{ date('d-m-y',strtotime($sales->date)) }}</th>
                </tr>

                    <tr>
                        <th style=" border: 0.5px solid black;">SNO.</th>
                        <th colspan="4" style=" border: 0.5px solid black;">Product</th>
                        
                        <th style=" border: 0.5px solid black;">Unit</th>
                        <th style=" border: 0.5px solid black;">QTY</th>
                        <th style=" border: 0.5px solid black;">Rate</th>
                        <th style=" border: 0.5px solid black;">Total</th>
                    </tr>
                </thead>
                <tbody>
                @php $grandTotal=0; @endphp
                    @foreach($sales_details as $row)
                    <tr>
                    
                        <td>
                            {{ $loop->index+1 }}
                        </td>

                        <td colspan="4">{{ $row->product->name }}</td>

                        <td>{{ $row->unit->name }}</td>

                        <td>{{ $row->qty }}</td>  
                        
                        <td style="text-align:right;">{{ number_format($row->saleRate,2) }}</td>
                        
                        <td style="text-align:right;">{{ number_format($row->total,2) }}</td>                        
                        

                        
                    </tr>
                    @php $grandTotal +=$row->total; @endphp
                   @endforeach 
                   <tr>
                   <th style="text-align:right;" colspan="8">Grand Total : </tH>
                   <th >{{ $grandTotal }}</tH>
                   </tr>
                </tbody>
            </table>
            <div>
            <p style="text-align:right;position: fixed; padding-right:15px;
  bottom: 40;
  width: 100%;
 ]"><b>{{ $company->name }}</b></p>
            </div>

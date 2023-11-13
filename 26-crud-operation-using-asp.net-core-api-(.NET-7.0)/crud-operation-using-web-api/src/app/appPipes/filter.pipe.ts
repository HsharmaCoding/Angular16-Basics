import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filter'
})
export class FilterPipe implements PipeTransform {

  transform(value: any, searchTerm:any): any {
    debugger
    if(value.length===0){
      return value
    }
    return value.filter(function(search:any){
      return search.firstName.toLowerCase().indexOf(searchTerm.toLowerCase())>-1
    })
  }

}
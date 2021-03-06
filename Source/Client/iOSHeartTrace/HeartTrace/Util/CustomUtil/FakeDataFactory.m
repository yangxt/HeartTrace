//
//  FakeDataFactory.m
//  HeartTrace
//
//  Created by user on 13-12-31.
//  Copyright (c) 2013年 voole. All rights reserved.
//

#import "FakeDataFactory.h"
#import "ElementsContainer.h"
#import "Wish.h"
#import "ModelHeader.h"
@implementation FakeDataFactory

+(ElementsContainer*)fakeWishPage:(NSInteger)pageIndex pageSize:(NSInteger)pageSize{
    
    ElementsContainer*result=[[[ElementsContainer alloc]init]autorelease];
    result.pageIndex=pageIndex;
    result.pageSize=pageSize;
    for (NSInteger indx=pageSize*pageIndex; indx<pageSize*(pageIndex+1); indx++) {
        Wish*fakeWish=[Wish fakeWish:indx];
        [result.elementArray addObject:fakeWish];
    }
    return result;
}
+(ElementsContainer*)fakeProductPage:(NSInteger)pageIndex pageSize:(NSInteger)pageSize{
    ElementsContainer*result=[[[ElementsContainer alloc]init]autorelease];
    result.count=pageSize;
    result.pageIndex=pageIndex;
    result.pageSize=pageSize;
    for (NSInteger indx=pageSize*pageIndex; indx<pageSize*(pageIndex+1); indx++) {
        Product*fakeProduct=[Product fakeProduct:indx];
        [result.elementArray addObject:fakeProduct];
    }
    return result;
}
+(ElementsContainer*)fakeOrganizationPage:(NSInteger)pageIndex pageSize:(NSInteger)pageSize{
    ElementsContainer*result=[[[ElementsContainer alloc]init]autorelease];
    result.pageIndex=pageIndex;
    result.pageSize=pageSize;
    for (NSInteger indx=pageSize*pageIndex; indx<pageSize*(pageIndex+1); indx++) {
        Organization*fakeOrganization=[Organization fakeOrganization:indx];
        [result.elementArray addObject:fakeOrganization];
    }
    return result;
}


@end

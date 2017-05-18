//
//  ViewController.m
//  NSBundleDemo
//
//  Created by zhy on 15/05/2017.
//  Copyright © 2017 UAMA. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle]; //当前可执行文件所在的主包
    
    
    NSLog(@"%@", [NSBundle allBundles]); //包括当前的主包和其它（不包括当前已经存在的framework）动态创建的包
    NSLog(@"%@", [NSBundle allFrameworks]); //The returned array includes frameworks that are linked into an application when the application is built and bundles for frameworks that have been dynamically created.
    
    NSLog(@"path: %@", bundle.bundlePath);
    
    NSLog(@"%@", bundle.bundleIdentifier); //打印当前bundle id
    
    NSLog(@"%@", bundle.infoDictionary); //打印info.plist文件中的内容
    
    NSLog(@"%@", bundle.localizedInfoDictionary); //根据当前语言环境，打印语言国际化文件中的内容
    
    NSLog(@"%@", bundle.principalClass);
    
    NSLog(@"%@", [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"]); //打印当前版本号
    
    NSLog(@"%@", [bundle objectForInfoDictionaryKey:@"CFBundleVersion"]); //打印当前编译build号
    
    NSLog(@"%@", [bundle localizations]); //打印所有的本地化语言
    
    NSLog(@"%@", [bundle developmentLocalization]); //开发语言
    
    NSLog(@"%@", [bundle executableArchitectures]); //打印支持的CPU架构
    //如p [bundle executableArchitectures][0]会打印(__NSCFNumber *) $5 = 0xb000000010000072 (int)16777223，即0x01000007, NSBundleExecutableArchitectureX86_64
    
    NSLog(@"%@", [bundle builtInPlugInsPath]); //打印插件路径
    NSLog(@"%@", [bundle builtInPlugInsURL]); //打印插件路径url形式
    NSLog(@"%@", [bundle appStoreReceiptURL]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

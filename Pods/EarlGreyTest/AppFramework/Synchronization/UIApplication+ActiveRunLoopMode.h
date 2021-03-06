//
// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import <UIKit/UIKit.h>

/**
 * EarlGrey specific additions for tracking runloop mode changes.
 */
@interface UIApplication (ActiveRunLoopMode)

/**
 * @return Active mode for the main runloop that was pushed by one of the push runloop methods.
 *        May return @c nil when no mode was pushed.
 */
- (NSString *)grey_activeRunLoopMode;

@end

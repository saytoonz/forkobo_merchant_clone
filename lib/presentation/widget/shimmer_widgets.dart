import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:gap/gap.dart';
import '../../utils/app_colors.dart';

class ShimmerWidgets {
  static Widget buildShimmerContainer({
    required double width,
    required double height,
    double borderRadius = 8.0,
  }) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey.withValues(alpha: 0.3),
      highlightColor: AppColors.grey.withValues(alpha: 0.1),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.grey.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  /// Shimmer for Following Shops Section
  static Widget buildFollowingShopsShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(44),
        // Title shimmer
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildShimmerContainer(width: 80, height: 20),
              buildShimmerContainer(width: 60, height: 16),
            ],
          ),
        ),
        const Gap(6),
        // Following shops horizontal list shimmer
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Gap(16),
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      buildShimmerContainer(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                      ),
                      const Gap(4),
                      buildShimmerContainer(width: 50, height: 12),
                    ],
                  ),
                ),
              ),
              const Gap(16),
            ],
          ),
        ),
      ],
    );
  }

  /// Shimmer for Recently Viewed Section
  static Widget buildRecentlyViewedShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title shimmer
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildShimmerContainer(width: 120, height: 20),
              buildShimmerContainer(width: 60, height: 16),
            ],
          ),
        ),
        const Gap(12),
        // Recently viewed horizontal list shimmer
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Gap(16),
              ...List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildShimmerContainer(
                        width: 120,
                        height: 120,
                        borderRadius: 12,
                      ),
                      const Gap(8),
                      buildShimmerContainer(width: 100, height: 14),
                      const Gap(4),
                      buildShimmerContainer(width: 80, height: 12),
                      const Gap(4),
                      buildShimmerContainer(width: 60, height: 16),
                    ],
                  ),
                ),
              ),
              const Gap(16),
            ],
          ),
        ),
      ],
    );
  }

  /// Shimmer for Shop Product Row Card
  static Widget buildShopProductRowShimmer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shop header shimmer
          Row(
            children: [
              buildShimmerContainer(width: 40, height: 40, borderRadius: 20),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildShimmerContainer(width: 120, height: 16),
                    const Gap(4),
                    buildShimmerContainer(width: 80, height: 12),
                  ],
                ),
              ),
              buildShimmerContainer(width: 60, height: 32, borderRadius: 16),
            ],
          ),
          const Gap(16),
          // Products horizontal list shimmer
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildShimmerContainer(
                        width: 140,
                        height: 140,
                        borderRadius: 12,
                      ),
                      const Gap(8),
                      buildShimmerContainer(width: 120, height: 14),
                      const Gap(4),
                      buildShimmerContainer(width: 80, height: 12),
                      const Gap(4),
                      buildShimmerContainer(width: 60, height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }

  /// Shimmer for Shop Product Grid Card
  static Widget buildShopProductGridShimmer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shop header shimmer
          Row(
            children: [
              buildShimmerContainer(width: 40, height: 40, borderRadius: 20),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildShimmerContainer(width: 120, height: 16),
                    const Gap(4),
                    buildShimmerContainer(width: 80, height: 12),
                  ],
                ),
              ),
              buildShimmerContainer(width: 60, height: 32, borderRadius: 16),
            ],
          ),
          const Gap(16),
          // Products grid shimmer
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: buildShimmerContainer(
                      width: double.infinity,
                      height: double.infinity,
                      borderRadius: 12,
                    ),
                  ),
                  const Gap(8),
                  buildShimmerContainer(width: double.infinity, height: 14),
                  const Gap(4),
                  buildShimmerContainer(width: 100, height: 12),
                  const Gap(4),
                  buildShimmerContainer(width: 60, height: 16),
                ],
              );
            },
          ),
          const Gap(20),
        ],
      ),
    );
  }

  /// Shimmer for Shop Video Product Card
  static Widget buildShopVideoProductShimmer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shop header shimmer
          Row(
            children: [
              buildShimmerContainer(width: 40, height: 40, borderRadius: 20),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildShimmerContainer(width: 120, height: 16),
                    const Gap(4),
                    buildShimmerContainer(width: 80, height: 12),
                  ],
                ),
              ),
              buildShimmerContainer(width: 60, height: 32, borderRadius: 16),
            ],
          ),
          const Gap(16),
          // Video product shimmer
          buildShimmerContainer(
            width: double.infinity,
            height: 200,
            borderRadius: 16,
          ),
          const Gap(12),
          // Product info shimmer
          buildShimmerContainer(width: 200, height: 16),
          const Gap(6),
          buildShimmerContainer(width: 150, height: 14),
          const Gap(6),
          Row(
            children: [
              buildShimmerContainer(width: 80, height: 16),
              const Spacer(),
              buildShimmerContainer(width: 100, height: 32, borderRadius: 16),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }

  /// Complete Home Screen Loading Shimmer
  static Widget buildHomeScreenShimmer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(42),
          // Following shops shimmer
          buildFollowingShopsShimmer(),
          const Gap(20),
          // Recently viewed shimmer
          buildRecentlyViewedShimmer(),
          const Gap(20),
          // Shop cards shimmer
          buildShopProductRowShimmer(),
          buildShopProductGridShimmer(),
          buildShopVideoProductShimmer(),
          buildShopProductRowShimmer(),
          const Gap(120),
        ],
      ),
    );
  }

  /// Shimmer for Following Shops Screen
  static Widget buildFollowingShopsScreenShimmer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Gap(24),
          ...List.generate(
            3,
            (shopIndex) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shop header shimmer
                Row(
                  children: [
                    buildShimmerContainer(
                      width: 50,
                      height: 50,
                      borderRadius: 25,
                    ),
                    const Gap(12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildShimmerContainer(width: 120, height: 16),
                          const Gap(4),
                          buildShimmerContainer(width: 80, height: 12),
                        ],
                      ),
                    ),
                    buildShimmerContainer(
                      width: 80,
                      height: 32,
                      borderRadius: 16,
                    ),
                  ],
                ),
                const Gap(12),
                // Products grid shimmer
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildShimmerContainer(
                          width: double.infinity,
                          height: 146,
                          borderRadius: 12,
                        ),
                        const Gap(8),
                        buildShimmerContainer(
                          width: double.infinity,
                          height: 14,
                        ),
                        const Gap(4),
                        buildShimmerContainer(width: 100, height: 12),
                        const Gap(4),
                        buildShimmerContainer(width: 60, height: 16),
                      ],
                    );
                  },
                ),
                const Gap(14),
              ],
            ),
          ),
          const Gap(140),
        ],
      ),
    );
  }

  /// Shimmer for Recently Viewed Screen
  static Widget buildRecentlyViewedScreenShimmer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Gap(24),
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 160,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return buildShimmerContainer(
                width: double.infinity,
                height: 160,
                borderRadius: 12,
              );
            },
          ),
          const Gap(140),
        ],
      ),
    );
  }

  /// Shimmer for Saved Products Screen
  static Widget buildSavedProductsScreenShimmer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Gap(24),
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 160,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return buildShimmerContainer(
                width: double.infinity,
                height: 160,
                borderRadius: 12,
              );
            },
          ),
          const Gap(140),
        ],
      ),
    );
  }

  /// Shimmer for Orders Screen
  static Widget buildOrdersScreenShimmer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Gap(30),
          // Dashboard section shimmer
          Container(
            margin: const EdgeInsets.only(bottom: 36),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.grey.withValues(alpha: 0.1),
            ),
            child: Column(
              children: [
                const Gap(24),
                // Revenue cards shimmer
                Row(
                  children: [
                    Expanded(
                      child: buildShimmerContainer(
                        width: double.infinity,
                        height: 80,
                        borderRadius: 12,
                      ),
                    ),
                    const Gap(12),
                    Expanded(
                      child: buildShimmerContainer(
                        width: double.infinity,
                        height: 80,
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    Expanded(
                      child: buildShimmerContainer(
                        width: double.infinity,
                        height: 80,
                        borderRadius: 12,
                      ),
                    ),
                    const Gap(12),
                    Expanded(
                      child: buildShimmerContainer(
                        width: double.infinity,
                        height: 80,
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
                const Gap(24),
              ],
            ),
          ),
          // Orders header shimmer
          Row(
            children: [
              Expanded(
                child: buildShimmerContainer(
                  width: 100,
                  height: 24,
                  borderRadius: 4,
                ),
              ),
              const Gap(8),
              buildShimmerContainer(width: 120, height: 30, borderRadius: 8),
            ],
          ),
          const Gap(16),
          // Orders list shimmer
          ...List.generate(
            5,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      buildShimmerContainer(
                        width: 60,
                        height: 60,
                        borderRadius: 8,
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildShimmerContainer(
                              width: double.infinity,
                              height: 16,
                              borderRadius: 4,
                            ),
                            const Gap(8),
                            buildShimmerContainer(
                              width: 120,
                              height: 14,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      buildShimmerContainer(
                        width: 80,
                        height: 20,
                        borderRadius: 10,
                      ),
                    ],
                  ),
                  const Gap(12),
                  buildShimmerContainer(
                    width: double.infinity,
                    height: 14,
                    borderRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          const Gap(140),
        ],
      ),
    );
  }

  /// Shimmer for Cart Screen
  static Widget buildCartScreenShimmer() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Gap(100), // Account for cart close head
          ...List.generate(
            2,
            (index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Shop header shimmer
                  Row(
                    children: [
                      buildShimmerContainer(
                        width: 40,
                        height: 40,
                        borderRadius: 20,
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildShimmerContainer(
                              width: 120,
                              height: 16,
                              borderRadius: 4,
                            ),
                            const Gap(4),
                            buildShimmerContainer(
                              width: 80,
                              height: 12,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  // Cart items shimmer
                  ...List.generate(
                    2,
                    (itemIndex) => Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          buildShimmerContainer(
                            width: 60,
                            height: 60,
                            borderRadius: 8,
                          ),
                          const Gap(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildShimmerContainer(
                                  width: double.infinity,
                                  height: 14,
                                  borderRadius: 4,
                                ),
                                const Gap(6),
                                buildShimmerContainer(
                                  width: 80,
                                  height: 12,
                                  borderRadius: 4,
                                ),
                              ],
                            ),
                          ),
                          buildShimmerContainer(
                            width: 60,
                            height: 30,
                            borderRadius: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Subtotal shimmer
                  Row(
                    children: [
                      buildShimmerContainer(
                        width: 60,
                        height: 14,
                        borderRadius: 4,
                      ),
                      const Gap(16),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: buildShimmerContainer(
                            width: 80,
                            height: 14,
                            borderRadius: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Gap(140),
        ],
      ),
    );
  }

  /// Shimmer for Search Subcategory Screen
  static Widget buildSearchSubcategoryScreenShimmer() {
    return Column(
      children: [
        const Gap(8),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(24),
                // Categories grid shimmer
                GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 6,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 82,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return buildShimmerContainer(
                      width: double.infinity,
                      height: 82,
                      borderRadius: 12,
                    );
                  },
                ),
                const Gap(24),
                // Subcategory sections shimmer
                ...List.generate(
                  3,
                  (sectionIndex) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(36),
                        buildShimmerContainer(
                          width: 150,
                          height: 20,
                          borderRadius: 4,
                        ),
                        const Gap(16),
                        GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 160,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                          itemBuilder: (context, index) {
                            return buildShimmerContainer(
                              width: double.infinity,
                              height: 160,
                              borderRadius: 12,
                            );
                          },
                        ),
                        const Gap(14),
                      ],
                    ),
                  ),
                ),
                const Gap(140),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Shimmer for Search Results Screen
  static Widget buildSearchResultsScreenShimmer() {
    return Column(
      children: [
        const Gap(8),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(12),
                // Results count shimmer
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      buildShimmerContainer(
                        width: 200,
                        height: 16,
                        borderRadius: 4,
                      ),
                    ],
                  ),
                ),
                const Gap(24),
                // Products grid shimmer
                GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 160,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return buildShimmerContainer(
                      width: double.infinity,
                      height: 160,
                      borderRadius: 12,
                    );
                  },
                ),
                const Gap(140),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Shimmer for Main Search Screen
  static Widget buildSearchScreenShimmer() {
    return Column(
      children: [
        const Gap(8),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(24),
                // Categories grid shimmer
                GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 6,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 82,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return buildShimmerContainer(
                      width: double.infinity,
                      height: 82,
                      borderRadius: 12,
                    );
                  },
                ),
                const Gap(24),
                // Subcategory sections shimmer
                ...List.generate(
                  3,
                  (sectionIndex) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(36),
                        buildShimmerContainer(
                          width: 150,
                          height: 20,
                          borderRadius: 4,
                        ),
                        const Gap(16),
                        GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 160,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                          itemBuilder: (context, index) {
                            return buildShimmerContainer(
                              width: double.infinity,
                              height: 160,
                              borderRadius: 12,
                            );
                          },
                        ),
                        const Gap(14),
                      ],
                    ),
                  ),
                ),
                const Gap(140),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

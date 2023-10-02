

<?php $__env->startSection('content'); ?>
    <div>
        REPORTING
    </div>
    <input name="dates">
    <select class="js-example-basic-single" name="state" multiple="multiple">
        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($product->id); ?>"><?php echo e($product->product_name); ?></option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
    <div id="product_price_range">
        <canvas class="canvasChartProduct"></canvas>
    </div>

     <div id="output" class="col-12">
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <?php echo \Illuminate\View\Factory::parentPlaceholder('scripts'); ?>
    <?php echo e(Html::script(mix('assets/admin/js/dashboard.js'))); ?>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script type="text/javascript" src="https://pivottable.js.org/dist/pivot.js"></script>
    <script>  
        $('input[name="dates"]').daterangepicker();
        $('.js-example-basic-single').select2();
        $.ajax({
            url: 'reporting/get-product-all',
            success:function(response){
                $("#output").pivot(
                    response,
                    {
                        rows: ["created_range"],
                        cols: ["price_range"]
                    }
                )
            }
        })
        var productPriceRange = {
            _defaults: {
                type: 'doughnut',
                tooltipFillColor: "rgba(51, 51, 51, 0.55)",
                data: {
                    labels: [
                        '< 50000',
                        '50000 - 99999',
                        '100000 - 999999',
                        '>= 1000000'
                    ],
                    datasets: [{
                        data: [],
                        backgroundColor: [
                            "#3498DB",
                            "#3498DB",
                            "#9B59B6",
                            "#E74C3C",
                        ],
                        hoverBackgroundColor: [
                            "#36CAAB",
                            "#49A9EA",
                            "#B370CF",
                            "#E95E4F",
                        ]
                    }]
                },
                options: {
                    legend: false,
                    responsive: false
                }
            },
            init: function ($el) {
                var self = this;
                $el = $($el);

                $.ajax({
                    url: 'reporting/chart-product',
                    success: function (response) {
                        self._defaults.data.datasets[0].data = [
                            response.less_50000, 
                            response._50000_99999, 
                            response._100000_999999, 
                            response.more_1000000
                        ];
                        
                        new Chart($el.find('.canvasChartProduct'), self._defaults);
                    }
                });
            }
        };
        productPriceRange.init($('#product_price_range'));
    </script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
    <?php echo \Illuminate\View\Factory::parentPlaceholder('styles'); ?>
    <?php echo e(Html::style(mix('assets/admin/css/dashboard.css'))); ?>

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="https://pivottable.js.org/dist/pivot.css">
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\temp\New folder\Day9_laravel-boilerplate_Rizky Al Arief\resources\views/admin/reporting.blade.php ENDPATH**/ ?>
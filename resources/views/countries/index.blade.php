<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Proizvodi po zemljama
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white p-6 shadow-sm sm:rounded-lg">

                <table class="w-full border">
                    <thead>
                        <tr>
                            <th>Proizvod</th>
                            <th>Zemlja</th>
                            <th>Regija</th>
                            <th>Broj stanovnika</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>{{ $product->naziv }}</td>
                                <td>{{ $product->country?->naziv }}</td>
                                <td>{{ $product->country?->regija }}</td>
                                <td>{{ $product->country?->br_stanovnika }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div class="mt-4">
                    {{ $products->links() }}
                </div>

            </div>
        </div>
    </div>
</x-app-layout>
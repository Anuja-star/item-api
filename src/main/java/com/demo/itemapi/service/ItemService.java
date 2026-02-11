package com.demo.itemapi.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.demo.itemapi.model.Item;

@Service
public class ItemService {

    private final List<Item> items = new ArrayList<>();
    private int idCounter = 1;

    // Add new item
    public Item addItem(Item item) {
        item.setId(idCounter++);
        items.add(item);
        return item;
    }

    // Get item by ID
    public Item getItemById(int id) {
        return items.stream()
                .filter(item -> item.getId() == id)
                .findFirst()
                .orElse(null);
    }
}

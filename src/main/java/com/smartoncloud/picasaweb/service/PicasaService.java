package com.smartoncloud.picasaweb.service;

import java.util.List;

import com.sun.syndication.feed.atom.Entry;

public interface PicasaService {

    List<Entry> getAlbums();

}

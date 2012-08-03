package com.smartoncloud.picasaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.stereotype.Service;

import com.sun.syndication.feed.atom.Entry;
import com.sun.syndication.feed.atom.Feed;

@Service
@SuppressWarnings({ "unused", "unchecked" })
public class PicasaServiceImpl implements PicasaService {

    /* Get Albums - GET */
    private static final String GET_ALBUMS = "https://picasaweb.google.com/data/entry/api/user/default/albumid/{albumId}";
    /* Insert Albums - POST */
    private static final String INSERT_ALBUMS = "https://picasaweb.google.com/data/feed/api/user/default";
    /* Update Albums - PUT */
    private static final String UPDATE_ALBUMS = "https://picasaweb.google.com/data/entry/api/user/default/albumid/{albumId}";
    /* Delete Albums - DELETE */
    private static final String DELETE_ALBUMS = "https://picasaweb.google.com/data/entry/api/user/default/albumid/{albumId}";
    /* List Albums - GET */
    private static final String LIST_ALBUMS = "https://picasaweb.google.com/data/feed/api/user/default";

    /* Get Metadata - GET */
    private static final String GET_MEDIA = "https://picasaweb.google.com/data/entry/api/user/default/albumid/{albumId}/photoid/{photoId}";
    /* Update Metadata - PUT */
    private static final String UPDATE_METADATA = "https://picasaweb.google.com/data/entry/api/user/default/albumid/{albumId}/photoid/{photoId}";
    /* List Metadata - GET */
    private static final String LIST_METADATA = "https://picasaweb.google.com/data/feed/api/user/default/albumid/{albmId}";

    /* Insert Media - POST */
    private static final String INSERT_METADATA = "https://picasaweb.google.com/data/feed/api/user/default/albumid/{albumId}";
    /* Update Media - PUT */
    private static final String UPDATE_MEDIA = "https://picasaweb.google.com/data/media/api/user/default/albumid/{albumId}/photoid/{photoId}";
    /* Delete Media - DELETE */
    private static final String DELETE_MEDIA = "https://picasaweb.google.com/data/media/api/user/default/albumid/{albumId}/photoid/{photoId}";

    @Autowired
    private OAuth2RestTemplate oauthRestTemplate;

    @Override
    public List<Entry> getAlbums() {
	Feed feed = oauthRestTemplate.getForObject(LIST_ALBUMS, Feed.class);
	List<Entry> entries = feed.getEntries();
	return entries;
    }

}
